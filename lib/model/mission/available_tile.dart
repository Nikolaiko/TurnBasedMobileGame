import 'dart:math';

import 'package:turn_based_game/model/mission/enums/available_tile_type.dart';

class AvailableTile {
  final Point<int> position;
  final AvaliableTileType type;

  AvailableTile(this.position, this.type); 
}