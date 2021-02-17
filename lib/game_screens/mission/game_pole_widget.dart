import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:turn_based_game/const/map_consts.dart';
import 'package:turn_based_game/game_screens/mission/state/game_state.dart';

class GamePoleWidget extends StatefulWidget {
  @override
  _GamePoleWidgetState createState() => _GamePoleWidgetState();
}

class _GamePoleWidgetState extends State<GamePoleWidget> {  
  GameState _state;

  @override
  Widget build(BuildContext context) {
    _state = Provider.of<GameState>(context);
    return Column(
      children: _buildGamePoleRows(),
    );
  }

  List<Widget> _buildGamePoleRows() {
    List<Widget> rows = List();
    for (int i = 0; i < _state.missionMap.length; i++) {
      Row row = Row(  
        children: _buildRowTiles(),
      );
      rows.add(row);        
    }
    return rows;
  }

  List<Widget> _buildRowTiles() {
    List<Widget> tiles = List();
    for (int i = 0; i < _state.missionMap.first.length; i++) {      
      tiles.add(Image.asset(
        "assets/images/mission/map_tile.png",
        fit: BoxFit.fill,
        width: MapConsts.TILE_SIDE,
        height: MapConsts.TILE_SIDE
      ));
    }
    return tiles;
  }
}