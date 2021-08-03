import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

import 'package:collection/collection.dart';
import 'package:turn_based_game/game_screens/mission/helpers/turn_logic_resolver.dart';
import 'package:turn_based_game/model/mission/available_tile.dart';
import 'package:turn_based_game/model/mission/enums/available_tile_type.dart';
import 'package:turn_based_game/model/mission/enums/conflict_side.dart';
import 'package:turn_based_game/model/mission/enums/unit_animation_type.dart';
import 'package:turn_based_game/model/mission/ui_tile.dart';
import 'package:turn_based_game/model/mission/unit.dart';
import 'package:turn_based_game/model/mission/unit_action.dart';

// ignore: prefer_mixin
class GameState with ChangeNotifier {
  final StreamController<UnitAction> _actionsStream 
                        = StreamController.broadcast();

  final TurnLogicResolver _logicResolver;  
  final ConflictSide _activeSide = ConflictSide.player;

  VoidCallback? _winCallback;
  Unit? _selectedUnit;
  List<Point<int>> _tiles = [];  

  final List<List<int>> _missionMap;
  final List<Unit> _missionUnits;
  final List<UITile> _uiMap = [];
  final List<UnitAction> _currentActions = [];  
  
  set winCallback(VoidCallback callback) => _winCallback = callback;

  List<UITile> get uiMap => _uiMap;
  List<List<int>> get missionMap => _missionMap;
  List<Unit> get missionUnits => _missionUnits;  
  Stream<UnitAction> get actionsStream => _actionsStream.stream;

  GameState(
    this._missionMap, 
    this._missionUnits,
    this._logicResolver
  ); 

  void endTurn() {    
    for (final Unit currentUnit in _missionUnits) {
      currentUnit.alreadyMoved = false;
    }
    notifyListeners();
  }

  void unitTap(Unit tappedUnit) {
    if (tappedUnit.alreadyMoved) {
      return;
    }

    _uiMap.clear();
    _tiles.clear();

    if (tappedUnit != _selectedUnit) {      
      _selectedUnit = tappedUnit;
      List<AvailableTile> availableTiles = 
        _logicResolver.getAvailableTiles(tappedUnit, _missionUnits);
      for(final AvailableTile tile in availableTiles) {        
        _uiMap.add(
          UITile(
            tile.type.convertToUIType(),
            tile.position.x,
            tile.position.y
          )
        );
        _tiles.add(tile.position);
      }      
    } else {
      _selectedUnit = null;
    }
    notifyListeners();
  }

  void clearSelection() {
    uiMap.clear();
    _selectedUnit = null;
    notifyListeners();
  }

  void attackTap(int row, int column) {
    if (_selectedUnit != null) {     
      var path = _logicResolver.getPath(
        _selectedUnit!, 
        Point<int>(_selectedUnit!.row, _selectedUnit!.column), 
        Point<int>(row, column), 
        _tiles
      );      

      uiMap.clear();
      _currentActions.clear();

      var lx = _selectedUnit!.row;
      var ly = _selectedUnit!.column;

      if (path.isNotEmpty) {        
        for (var item in path) {
          _currentActions.add(
              UnitAction.move(
                _selectedUnit!,
                item.x,
                item.y,
                lx,
                ly,
              )
            );
          lx = item.x;
          ly = item.y;
        }
      }



      Unit attackedUnit = _missionUnits.firstWhere(
        (element) => element.column == column && element.row == row
      );
      
      _currentActions.add(
        UnitAction.attack(
          _selectedUnit!,
          attackedUnit,
          mirroredVictim: column <= attackedUnit.column
        )
      );

      attackedUnit.health -= _selectedUnit!.attack;
      if (attackedUnit.health <= 0) {
        _currentActions.add(
          UnitDie(
            attackedUnit,
            mirrored: column <= attackedUnit.column
          )
        );        
      }

      _selectedUnit!.alreadyMoved = true;
      _selectedUnit!.column = ly;
      _selectedUnit!.row = lx;
      _selectedUnit = null;

      notifyListeners();        
      _actionsStream.add(_currentActions.removeAt(0));  
    }
  }

  void moveTileTap(int row, int column) {
    if (_selectedUnit != null) {
      
      if (_tileIsAvailable(row, column)) {
        uiMap.clear();
        _currentActions.clear();

        if (_selectedUnit!.row == row || _selectedUnit!.column == column) {
          _currentActions.add(
            UnitAction.move(
              _selectedUnit!,
              row,
              column,
              _selectedUnit!.row,
              _selectedUnit!.column,
            )
          );
        } else {
          _currentActions.add(
            UnitAction.move(
              _selectedUnit!,
              _selectedUnit!.row,
              column,
              _selectedUnit!.row,
              _selectedUnit!.column,
            )
          );

          _currentActions.add(
            UnitAction.move(
              _selectedUnit!,
              row,
              column,
              _selectedUnit!.row,
              column,
            )
          );
        }        

        _selectedUnit!.alreadyMoved = true;
        _selectedUnit!.column = column;
        _selectedUnit!.row = row;
        _selectedUnit = null;

        notifyListeners();        
        _actionsStream.add(_currentActions.removeAt(0));        
      }      
    }
  }

  void actionDone(
    UnitAnimationType actionType, 
    { Unit? targetUnit }
  ) {

    if (actionType == UnitAnimationType.die) {
      _missionUnits.remove(targetUnit);
    }

    if (_currentActions.isEmpty) {
      _actionsStream.add(const UnitAction.empty());
      if (_isMissionComplete()) {
        _winCallback?.call();
        notifyListeners();
      }
    } else {
      _actionsStream.add(_currentActions.removeAt(0));
    }    
  }

  bool _tileIsAvailable(int row, int column) {
    var selectedTile = _uiMap.firstWhere((uiTile) {
      return uiTile.column == column && uiTile.row == row;
    });
    return selectedTile != null;
  }

  bool _isMissionComplete() {
    Unit? enemyUnit = _missionUnits.firstWhereOrNull(
      (element) => element.conflictSide == ConflictSide.enemy
    );
    return enemyUnit == null;
  }

  @override
  void dispose() {
    _actionsStream.close();
    super.dispose();
  }
}