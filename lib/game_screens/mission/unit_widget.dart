import 'package:flutter/material.dart';
import 'package:turn_based_game/const/map_consts.dart';

class UnitWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/mission/tank.png",
      fit: BoxFit.contain,
      width: MapConsts.TILE_SIDE,
      height: MapConsts.TILE_SIDE
    );
  }
}