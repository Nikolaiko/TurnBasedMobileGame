import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:turn_based_game/const/map_consts.dart';
import 'package:turn_based_game/game_screens/mission/state/game_state.dart';

class UIUserWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    GameState _state = Provider.of<GameState>(context);
    return SizedBox(
      width: MapConsts.tileSide * _state.missionMap.length,
      height: MapConsts.tileSide * _state.missionMap.first.length,
      child: Stack(
        children: [
          Container()
        ]
      ),
    );
  }
}