import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:turn_based_game/game_screens/mission/helpers/turn_logic_resolver.dart';
import 'package:turn_based_game/model/mission/ui_tile.dart';
import 'package:turn_based_game/model/mission/ui_tile_type.dart';
import 'package:turn_based_game/model/mission/unit.dart';
import 'package:turn_based_game/model/mission/unit_action.dart';

class GameState with ChangeNotifier {
  final StreamController<UnitAction> _actionsStream = StreamController.broadcast();

  Unit _selectedUnit;
  TurnLogicResolver _logicResolver;  

  final List<List<int>> _missionMap;
  final List<Unit> _missionUnits;
  final List<UITile> _uiMap = [];
  final List<UnitAction> _currentActions = [];

  List<UITile> get uiMap => _uiMap;
  List<List<int>> get missionMap => _missionMap;
  List<Unit> get missionUnits => _missionUnits;  
  Stream<UnitAction> get actionsStream => _actionsStream.stream;

  GameState(this._missionMap, this._missionUnits) {    
    _logicResolver = TurnLogicResolver(_missionMap);
  }

  void endTurn() {    
    for (final Unit currentUnit in _missionUnits) {
      currentUnit.alreadyMoved = false;
    }
  }

  void unitTap(Unit tappedUnit) {
    if (tappedUnit.alreadyMoved) {
      return;
    }

    _uiMap.clear();

    if (tappedUnit != _selectedUnit) {      
      _selectedUnit = tappedUnit;
      List<Point<int>> tiles = _logicResolver.getAvailableTiles(tappedUnit, _missionUnits);
      for(final Point<int> point in tiles) {
        _uiMap.add(
          UITile(
            UITileType.checkmark,
            point.x,
            point.y
          )
        );
      }      
    } else {
      _selectedUnit = null;
    }
    notifyListeners();
  }

  void tileTap(int row, int column) {
    if (_selectedUnit != null) {
      
      if (_tileIsAvailable(row, column)) {
        uiMap.clear();
        _currentActions.clear();

        if (_selectedUnit.row == row || _selectedUnit.column == column) {
          _currentActions.add(
            UnitAction.move(
              _selectedUnit,
              row,
              column,
              _selectedUnit.row,
              _selectedUnit.column,
            )
          );
        } else {
          _currentActions.add(
            UnitAction.move(
              _selectedUnit,
              _selectedUnit.row,
              column,
              _selectedUnit.row,
              _selectedUnit.column,
            )
          );

          _currentActions.add(
            UnitAction.move(
              _selectedUnit,
              row,
              column,
              _selectedUnit.row,
              column,
            )
          );
        }  

        _selectedUnit.alreadyMoved = true;
        _selectedUnit.column = column;
        _selectedUnit.row = row;
        _selectedUnit = null;

        notifyListeners();        
        _actionsStream.add(_currentActions.removeAt(0));        
      }      
    }
  }

  void actionDone() {
    if (_currentActions.isEmpty) {
      _actionsStream.add(const UnitAction.empty());
    } else {
      _actionsStream.add(_currentActions.removeAt(0));
    }    
  }

  bool _tileIsAvailable(int row, int column) {
    UITile selectedTile = _uiMap.firstWhere((uiTile) {
      return uiTile.column == column && uiTile.row == row;
    }, orElse: () {
      return null;
    });
    return selectedTile != null;
  }

  @override
  void dispose() {
    _actionsStream.close();
    super.dispose();
  }
}