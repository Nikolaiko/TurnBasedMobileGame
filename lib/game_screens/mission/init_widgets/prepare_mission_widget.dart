import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:turn_based_game/game_screens/mission/mission_screen.dart';
import 'package:turn_based_game/game_screens/mission/state/game_state.dart';
import 'package:turn_based_game/model/mission/unit.dart';

class PrepareMissionWidget extends StatelessWidget {
  final List<List<int>> _missionMap;
  final List<Unit> _missionUnits; 

  const PrepareMissionWidget(this._missionMap, this._missionUnits);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GameState(_missionMap, _missionUnits),
      child: Consumer<GameState>(
        builder: (context, value, child) => MissionScreen()
      )
    );
  }
}