import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../const/map_consts.dart';
import '../helpers/map_tile_resolver.dart';
import '../state/game_state.dart';

///Main mission pole widget
class GamePoleWidget extends StatefulWidget {
  @override
  _GamePoleWidgetState createState() => _GamePoleWidgetState();
}

class _GamePoleWidgetState extends State<GamePoleWidget> {  
  final MapTileResolver _tileResolver = MapTileResolver();
  GameState _state;

  @override
  Widget build(BuildContext context) {
    _state = Provider.of<GameState>(context);
    return Column(
      children: _buildGamePoleRows(),
    );
  }

  List<Widget> _buildGamePoleRows() {
    var rows = List<Widget>();
    for (var i = 0; i < _state.missionMap.length; i++) {
      var row = Row(  
        children: _buildRowTiles(i),
      );
      rows.add(row);        
    }
    return rows;
  }

  List<Widget> _buildRowTiles(int rowIndex) {
    var tiles = List<Widget>();
    for (var i = 0; i < _state.missionMap.first.length; i++) {      
      tiles.add(GestureDetector(
        onTap: () => _state.clearSelection(),
        child: Image.asset(
          _tileResolver.getMapImageName(_state.missionMap[rowIndex][i]),
          fit: BoxFit.fill,
          width: MapConsts.tileSide,
          height: MapConsts.tileSide,
          semanticLabel: _state.missionMap[rowIndex][i] == MapConsts.waterTile 
          ? MapConsts.waterTileLabel 
          : MapConsts.terrainTileLabel,
        ),
      ));
    }
    return tiles;
  }
}