import 'dart:math';

import 'package:turn_based_game/const/map_consts.dart';
import 'package:turn_based_game/const/unit_turn_length_consts.dart';
import 'package:turn_based_game/model/mission/unit.dart';
import 'package:turn_based_game/model/mission/unit_type.dart';

class TurnLogicResolver {
  final List<List<int>> _map;

  TurnLogicResolver(this._map);

  List<Point<int>> getAvailableTiles(Unit unit, List<Unit> unitsMap) {
    List<Point<int>> tiles = [];
    int turnDepth = _getUnitBaseMoveDistance(unit);

    _getAllTilesFromPosition(
      Point<int>(unit.row, unit.column), 
      turnDepth,
      tiles,
      unitsMap
    );
    //print(tiles);

    return tiles;
  }

  bool _isTileAvailable(int row, int column, List<Unit> unitsMap) {    
    return _isTileInsideMap(row, column) &&
      _map[row][column] != null && 
      _map[row][column] == MapConsts.TERRAIN_TILE && 
      _isTileNotOccupied(row, column, unitsMap);    
  }

  bool _isTileInsideMap(int row, int column) {
    return row >= 0 && column >= 0 && row < _map.length && column < _map.first.length;
  }

  bool _isTileNotOccupied(int row, int column, List<Unit> unitsMap) {
    bool freeTile = true;
    for (final Unit unit in unitsMap) {
      if (unit.row == row && unit.column == column) {
        freeTile = false;
        break;
      }
    }
    return freeTile;
  }

  void _getAllTilesFromPosition(
    Point<int> position, 
    int depth, 
    List<Point<int>> tiles,
    List<Unit> unitsMap) {

    if (depth == 0) {
      return;
    }

    //print("Postion: ${position.x}, ${position.y}");

    if (_isTileAvailable(position.x, position.y + 1, unitsMap)) {
      Point<int> rightTile = Point<int>(position.x, position.y + 1);
      //print("Right Tile: ${rightTile.x}, ${rightTile.y}");

      if (!tiles.contains(rightTile)) {
        //print("Right Tile: inside");
        tiles.add(rightTile);        
      }
      _getAllTilesFromPosition(
        rightTile, 
        depth - 1,
        tiles,
        unitsMap
      );
    }

    if (_isTileAvailable(position.x, position.y - 1, unitsMap)) {
      Point<int> leftTile = Point<int>(position.x, position.y - 1);
      //print("Left Tile: ${leftTile.x}, ${leftTile.y}");

      if (!tiles.contains(leftTile)) {
        //print("Left Tile: inside");
        tiles.add(leftTile);        
      }

      _getAllTilesFromPosition(
        leftTile, 
        depth - 1,
        tiles,
        unitsMap
      );
    }
    
    if (_isTileAvailable(position.x - 1, position.y, unitsMap)) {
      Point<int> topTile = Point<int>(position.x - 1, position.y);
      //print("Top Tile: ${topTile.x}, ${topTile.y}");

      if (!tiles.contains(topTile)) {
        //print("Top Tile: inside");
        tiles.add(topTile);        
      }
      _getAllTilesFromPosition(
        topTile,           
        depth - 1,
        tiles,
        unitsMap
      );
    }

    if (_isTileAvailable(position.x + 1, position.y, unitsMap)) {
      Point<int> bottomTile = Point<int>(position.x + 1, position.y);
      //print("Bottom Tile: ${bottomTile.x}, ${bottomTile.y}");

      if (!tiles.contains(bottomTile)) {
        //print("Bottom Tile: inside");
        tiles.add(bottomTile);        
      }
      _getAllTilesFromPosition(
        bottomTile, 
        depth - 1,
        tiles,
        unitsMap
      );
    }
  }

  int _getUnitBaseMoveDistance(Unit unit) {
    switch(unit.type) {
      case UnitType.infranty: {
        return INFRANTY_TURN_LENGTH;        
      }
      default: {
        return INFRANTY_TURN_LENGTH;
      }
    }
  }
}