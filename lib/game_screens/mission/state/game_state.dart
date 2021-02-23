import 'dart:async';

import 'package:flutter/material.dart';

import '../../../model/mission/ui_tile.dart';
import '../../../model/mission/ui_tile_type.dart';
import '../../../model/mission/unit.dart';
import '../../../model/mission/unit_action.dart';
import '../helpers/turn_logic_resolver.dart';

// ignore: prefer_mixin
class GameState with ChangeNotifier {
  final StreamController<UnitAction> _actionsStream 
  = StreamController.broadcast();

  Unit _selectedUnit;
  TurnLogicResolver _logicResolver;  

  final List<List<int>> _missionMap;
  final List<Unit> _missionUnits;
  final List<UITile> _uiMap = [];

  List<UITile> get uiMap => _uiMap;
  List<List<int>> get missionMap => _missionMap;
  List<Unit> get missionUnits => _missionUnits;  
  Stream<UnitAction> get actionsStream => _actionsStream.stream;

  GameState(this._missionMap, this._missionUnits) {    
    _logicResolver = TurnLogicResolver(_missionMap);
  }

  void unitTap(Unit tappedUnit) {
    _uiMap.clear();

    if (tappedUnit != _selectedUnit) {      
      _selectedUnit = tappedUnit;
      var tiles = 
          _logicResolver.getAvailableTiles(tappedUnit, _missionUnits);
      for(var point in tiles) {
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

        var action = UnitAction.move(
          _selectedUnit,
          row,
          column,
          _selectedUnit.row,
          _selectedUnit.column,
        );        

        _selectedUnit.column = column;
        _selectedUnit.row = row;
        _selectedUnit = null;

        notifyListeners();
        _actionsStream.add(action);        
      }      
    }
  }

  void actionDone() {
    _actionsStream.add(const UnitAction.empty());
  }

  bool _tileIsAvailable(int row, int column) {
    var selectedTile = _uiMap.firstWhere((uiTile) {
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