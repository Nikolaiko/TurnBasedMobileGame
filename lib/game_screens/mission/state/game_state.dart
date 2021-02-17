import 'dart:math';

import 'package:flutter/material.dart';
import 'package:turn_based_game/game_screens/mission/helpers/turn_logic_resolver.dart';
import 'package:turn_based_game/model/mission/ui_tile.dart';
import 'package:turn_based_game/model/mission/ui_tile_type.dart';
import 'package:turn_based_game/model/mission/unit.dart';

class GameState with ChangeNotifier {
  Unit _selectedUnit;

  TurnLogicResolver _logicResolver;

  List<List<int>> _missionMap;
  List<Unit> _missionUnits;
  List<UITile> _uiMap = List();

  List<UITile> get uiMap => _uiMap;
  List<List<int>> get missionMap => _missionMap;
  List<Unit> get missionUnits => _missionUnits;  

  GameState(this._missionMap, this._missionUnits) {
    _logicResolver = TurnLogicResolver(_missionMap);
  }

  void unitTap(Unit tappedUnit) {
    _uiMap.clear();

    if (tappedUnit != _selectedUnit) {      
      _selectedUnit = tappedUnit;
      List<Point<int>> tiles = _logicResolver.getAvailableTiles(tappedUnit, _missionUnits);
      for(Point<int> point in tiles) {
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
        _selectedUnit.column = column;
        _selectedUnit.row = row;
        _selectedUnit = null;
        notifyListeners();
      }      
    }
  }

  bool _tileIsAvailable(int row, int column) {
    UITile selectedTile = _uiMap.firstWhere((uiTile) {
      return uiTile.column == column && uiTile.row == row;
    });
    return selectedTile != null;
  }
}