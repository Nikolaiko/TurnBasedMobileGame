import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:turn_based_game/const/map_consts.dart';
import 'package:turn_based_game/game_screens/mission/state/game_state.dart';
import 'package:turn_based_game/model/mission/enums/ui_tile_type.dart';
import 'package:turn_based_game/model/mission/ui_tile.dart';

///Widget for ui marks on mission map
class UITilesWidget extends StatefulWidget {
  @override
  _UITilesWidgetState createState() => _UITilesWidgetState();
}

class _UITilesWidgetState extends State<UITilesWidget> {
  GameState? _state;

  @override
  Widget build(BuildContext context) {
    _state = Provider.of<GameState>(context);
    return SizedBox(
      width: MapConsts.tileSide * _state!.missionMap.length,
      height: MapConsts.tileSide * _state!.missionMap.first.length,
      child: Stack(
        children: _buildUIStack()
      ),
    );
  }

  List<Widget> _buildUIStack() {
    List<Widget> units = []; 
    for (final UITile uiTile in _state!.uiMap) {
      String name = uiTile.type == UITileType.checkmark 
        ? MapConsts.selectedTileImage
        : MapConsts.attackTileImage;

      units.add(
        Positioned(
          left: MapConsts.tileSide * uiTile.column,
          top: MapConsts.tileSide * uiTile.row,
          child: GestureDetector(
            onTap: () { 
              _uiTileCallback(
                uiTile.type,
                uiTile.row,
                uiTile.column
              ); 
            },
            child: Image.asset(
              name,
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

  void _uiTileCallback(UITileType type, int row, int column) {
    switch(type) {
      case UITileType.attack: {
        _state!.attackTap(row, column);
        break;
      }
      case UITileType.checkmark: {
        _state!.moveTileTap(row, column);
        break;
      }
      case UITileType.empty: {
        print("Empty tap");
      }
    }
  }
}