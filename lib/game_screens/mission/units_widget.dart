import 'package:flutter/material.dart';
import 'package:turn_based_game/const/map_consts.dart';

class UnitsWidget extends StatefulWidget {
  @override
  _UnitsWidgetState createState() => _UnitsWidgetState();
}

class _UnitsWidgetState extends State<UnitsWidget> {  
  int poleWidth = 20;
  int poleHeight = 20;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MapConsts.TILE_SIDE * poleWidth,
      height: MapConsts.TILE_SIDE * poleHeight,
      child: Stack(
        children: _buildUnitsStack()
      ),
    );
  }

  List<Widget> _buildUnitsStack() {
    List<Widget> units = List();

    units.add(
      Positioned(
        left: MapConsts.TILE_SIDE * 0,
        top: MapConsts.TILE_SIDE * 0,
        child: Image.asset(
          "assets/images/mission/tank.png",
          fit: BoxFit.contain,
          width: MapConsts.TILE_SIDE,
          height: MapConsts.TILE_SIDE
        ),
      )
    );

    units.add(
      Positioned(
        left: MapConsts.TILE_SIDE * 4,
        top: MapConsts.TILE_SIDE * 6,
        child: Image.asset(
          "assets/images/mission/tank.png",
          fit: BoxFit.contain,
          width: MapConsts.TILE_SIDE,
          height: MapConsts.TILE_SIDE
        ),
      )
    );

    return units;
  }
}