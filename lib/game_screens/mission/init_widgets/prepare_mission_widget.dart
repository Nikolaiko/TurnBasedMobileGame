import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../model/mission/unit.dart';
import '../mission_screen.dart';
import '../state/game_state.dart';

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