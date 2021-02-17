import 'dart:math';

import 'package:turn_based_game/const/map_consts.dart';
import 'package:turn_based_game/model/mission/unit.dart';

class TurnLogicResolver {
  final List<List<int>> _map;

  TurnLogicResolver(this._map);

  List<Point<int>> getAvailableTiles(Unit unit, List<Unit> unitsMap) {
    List<Point<int>> tiles = List();
    if (_isTileAvailable(unit.row, unit.column + 1, unitsMap)) {
      tiles.add(Point<int>(unit.row, unit.column + 1));
    }

    if (_isTileAvailable(unit.row, unit.column - 1, unitsMap)) {
      tiles.add(Point<int>(unit.row, unit.column - 1));
    }
    
    if (_isTileAvailable(unit.row + 1, unit.column, unitsMap)) {
      tiles.add(Point<int>(unit.row + 1, unit.column));
    }

    if (_isTileAvailable(unit.row - 1, unit.column, unitsMap)) {
      tiles.add(Point<int>(unit.row - 1, unit.column));
    }

    return tiles;
  }

  bool _isTileAvailable(int row, int column, List<Unit> unitsMap) {    
    return (
      _map[row][column] != null && 
      _map[row][column] == MapConsts.TERRAIN_TILE && 
      _isTileNotOccupied(row, column, unitsMap) &&
      _isTileInsideMap(row, column)
    );    
  }

  bool _isTileInsideMap(int row, int column) {
    return (row > 0 && column > 0 && row < _map.length && column < _map.first.length);
  }

  bool _isTileNotOccupied(int row, int column, List<Unit> unitsMap) {
    bool freeTile = true;
    for (Unit unit in unitsMap) {
      if (unit.row == row && unit.column == column) {
        freeTile = false;
        break;
      }
    }
    return freeTile;
  }
}