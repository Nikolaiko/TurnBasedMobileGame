import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:turn_based_game/const/map_consts.dart';
import 'package:turn_based_game/game_screens/mission/state/game_state.dart';
import 'package:turn_based_game/model/mission/ui_tile.dart';

class UITilesWidget extends StatefulWidget {
  @override
  _UITilesWidgetState createState() => _UITilesWidgetState();
}

class _UITilesWidgetState extends State<UITilesWidget> {
  GameState _state;

  @override
  Widget build(BuildContext context) {
    _state = Provider.of<GameState>(context);
    return SizedBox(
      width: MapConsts.TILE_SIDE * _state.missionMap.length,
      height: MapConsts.TILE_SIDE * _state.missionMap.first.length,
      child: Stack(
        children: _buildUIStack()
      ),
    );
  }

  List<Widget> _buildUIStack() {
    List<Widget> units = []; 
    for (final UITile uiTile in _state.uiMap) {
      units.add(
        Positioned(
          left: MapConsts.TILE_SIDE * uiTile.column,
          top: MapConsts.TILE_SIDE * uiTile.row,
          child: IgnorePointer(
            ignoring: true,
            child: Image.asset(
              MapConsts.SELECTED_TILE_IMAGE,
              fit: BoxFit.contain,
              width: MapConsts.TILE_SIDE,
              height: MapConsts.TILE_SIDE
            ),
          ),
        )
      );  
    }
    return units;
  }
}