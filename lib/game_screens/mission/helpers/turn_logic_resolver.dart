import 'dart:math';

import '../../../const/map_consts.dart';
import '../../../model/mission/unit.dart';

class TurnLogicResolver {
  final List<List<int>> _map;

  TurnLogicResolver(this._map);

  List<Point<int>> getAvailableTiles(Unit unit, List<Unit> unitsMap) {
    var tiles = [];
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
    return _isTileInsideMap(row, column) &&
      _map[row][column] != null && 
      _map[row][column] == MapConsts.terrainTile && 
      _isTileNotOccupied(row, column, unitsMap);    
  }

  bool _isTileInsideMap(int row, int column) {
    return row >= 0 && 
    column >= 0 && 
    row < _map.length && 
    column < _map.first.length;
  }

  bool _isTileNotOccupied(int row, int column, List<Unit> unitsMap) {
    var freeTile = true;
    for (var unit in unitsMap) {
      if (unit.row == row && unit.column == column) {
        freeTile = false;
        break;
      }
    }
    return freeTile;
  }
}