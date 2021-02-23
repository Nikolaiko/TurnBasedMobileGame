import 'dart:math';

import 'package:turn_based_game/const/map_consts.dart';
import 'package:turn_based_game/const/unit_turn_length_consts.dart';
import 'package:turn_based_game/model/mission/available_tile.dart';
import 'package:turn_based_game/model/mission/enums/available_tile_type.dart';
import 'package:turn_based_game/model/mission/unit.dart';
import 'package:turn_based_game/model/mission/enums/unit_type.dart';

class TurnLogicResolver {
  final List<List<int>> _map;

  TurnLogicResolver(this._map);

  List<AvailableTile> getAvailableTiles(Unit unit, List<Unit> unitsMap) {
    List<AvailableTile> tiles = [];
    int turnDepth = _getUnitBaseMoveDistance(unit);

    _getAllTilesFromPosition(
      unit,
      Point<int>(unit.row, unit.column), 
      turnDepth,
      tiles,
      unitsMap
    );

    return tiles;
  }

  AvaliableTileType _isTileAvailable(Unit unit, int row, int column, List<Unit> unitsMap) {    
    bool freeToMove = _isTileAvailableForMove(row, column, unitsMap);
    bool canAttacked = _isTileAvailableForAttack(unit, row, column, unitsMap);
    AvaliableTileType tileType = AvaliableTileType.not_available;
    
    if (freeToMove) {
      tileType = AvaliableTileType.forMove;
    } else if (canAttacked) {
      tileType = AvaliableTileType.forAttack;
    }
    return tileType;
  }

  bool _isTileAvailableForAttack(Unit unit, int row, int column, List<Unit> unitsMap) {
    Unit enemyUnit = unitsMap.firstWhere(
      (element) {
        return element.column == column && 
          element.row == row && 
          element.conflictSide != unit.conflictSide;
      },
      orElse: () {
        return null;
      }      
    );

    return _isTileInsideMap(row, column) &&
      _map[row][column] != null &&       
      enemyUnit != null;
  }

  bool _isTileAvailableForMove(int row, int column, List<Unit> unitsMap) {
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
    Unit unit,
    Point<int> position, 
    int depth, 
    List<AvailableTile> tiles,
    List<Unit> unitsMap) {

    if (depth == 0) {
      return;
    }
    
    AvaliableTileType rightTileType = _isTileAvailable(unit, position.x, position.y + 1, unitsMap);
    if (rightTileType != AvaliableTileType.not_available) {
      Point<int> rightPosition = Point<int>(position.x, position.y + 1);
      AvailableTile rightTile = AvailableTile(rightPosition, rightTileType);
      
      if (!tiles.contains(rightTile)) {      
        tiles.add(rightTile);        
      }
      _getAllTilesFromPosition(
        unit,
        rightPosition, 
        depth - 1,
        tiles,
        unitsMap
      );
    }

    AvaliableTileType leftTileType = _isTileAvailable(unit, position.x, position.y - 1, unitsMap);
    if (leftTileType != AvaliableTileType.not_available) {
      Point<int> leftPosition = Point<int>(position.x, position.y - 1);
      AvailableTile leftTile = AvailableTile(leftPosition, leftTileType);

      if (!tiles.contains(leftTile)) {        
        tiles.add(leftTile);        
      }
      _getAllTilesFromPosition(
        unit,
        leftPosition, 
        depth - 1,
        tiles,
        unitsMap
      );
    }
    
    AvaliableTileType topTileType = _isTileAvailable(unit, position.x - 1, position.y, unitsMap);
    if (topTileType != AvaliableTileType.not_available) {
      Point<int> topPosition = Point<int>(position.x - 1, position.y);
      AvailableTile topTile = AvailableTile(topPosition, topTileType);

      if (!tiles.contains(topTile)) {        
        tiles.add(topTile);        
      }
      _getAllTilesFromPosition(
        unit,
        topPosition,           
        depth - 1,
        tiles,
        unitsMap
      );
    }

    AvaliableTileType bottomTileType = _isTileAvailable(unit, position.x + 1, position.y, unitsMap);
    if (bottomTileType != AvaliableTileType.not_available) {
      Point<int> bottomPosition = Point<int>(position.x + 1, position.y);
      AvailableTile bottomTile = AvailableTile(bottomPosition, bottomTileType);

      if (!tiles.contains(bottomTile)) {        
        tiles.add(bottomTile);        
      }
      _getAllTilesFromPosition(
        unit,
        bottomPosition, 
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