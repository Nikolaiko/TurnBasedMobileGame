import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../const/map_consts.dart';
import '../state/game_state.dart';

///Widget for ui marks on mission map
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
      width: MapConsts.tileSide * _state.missionMap.length,
      height: MapConsts.tileSide * _state.missionMap.first.length,
      child: Stack(
        children: _buildUIStack()
      ),
    );
  }

  List<Widget> _buildUIStack() {
    var units = List<Widget>(); 
    for (var uiTile in _state.uiMap) {
      units.add(
        Positioned(
          left: MapConsts.tileSide * uiTile.column,
          top: MapConsts.tileSide * uiTile.row,
          child: IgnorePointer(
            ignoring: true,
            child: Image.asset(
              MapConsts.selectedTileImage,
              fit: BoxFit.contain,
              width: MapConsts.tileSide,
              height: MapConsts.tileSide
            ),
          ),
        )
      );  
    }
    return units;
  }
}