import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:turn_based_game/const/map_consts.dart';
import 'package:turn_based_game/game_screens/mission/state/game_state.dart';
import 'package:turn_based_game/model/mission/unit.dart';

class UnitsWidget extends StatefulWidget {
  @override
  _UnitsWidgetState createState() => _UnitsWidgetState();
}

class _UnitsWidgetState extends State<UnitsWidget> {  
  GameState _state;

  @override
  Widget build(BuildContext context) {
    _state = Provider.of<GameState>(context);
    return SizedBox(
      width: MapConsts.TILE_SIDE * _state.missionMap.length,
      height: MapConsts.TILE_SIDE * _state.missionMap.first.length,
      child: Stack(
        children: _buildUnitsStack()
      ),
    );
  }

  List<Widget> _buildUnitsStack() {
    List<Widget> units = List();
    for (Unit unit in _state.missionUnits) {
      units.add(
        Positioned(
          left: MapConsts.TILE_SIDE * unit.column,
          top: MapConsts.TILE_SIDE * unit.row,
          child: Image.asset(
            "assets/images/mission/tank.png",
            fit: BoxFit.contain,
            width: MapConsts.TILE_SIDE,
            height: MapConsts.TILE_SIDE
          ),
        )
      );  
    }

    return units;
  }
}