import 'package:flutter/material.dart';

class GamePoleWidget extends StatefulWidget {
  @override
  _GamePoleWidgetState createState() => _GamePoleWidgetState();
}

class _GamePoleWidgetState extends State<GamePoleWidget> {
  int tileSide = 40;
  int poleWidth = 20;
  int poleHeight = 20;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _buildGamePoleRows(),
    );
  }

  List<Widget> _buildGamePoleRows() {
    List<Widget> rows = List();
    for (int i = 0; i < poleHeight; i++) {
      Row row = Row(  
        children: _buildRowTiles(),
      );
      rows.add(row);        
    }
    return rows;
  }

  List<Widget> _buildRowTiles() {
    List<Widget> tiles = List();
    for (int i = 0; i < poleWidth; i++) {
      print(i);
      tiles.add(Image.asset(
        "assets/images/mission/map_tile.png",
        fit: BoxFit.fill,
        width: tileSide.toDouble(),
        height: tileSide.toDouble()
      ));
    }
    return tiles;
  }
}