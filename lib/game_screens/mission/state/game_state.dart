import 'package:flutter/material.dart';
import 'package:turn_based_game/model/mission/unit.dart';
import 'package:turn_based_game/redux/mission/mission_state.dart';

class GameState with ChangeNotifier {
  List<List<int>> _missionMap;
  List<Unit> _missionUnits;

  List<List<int>> get missionMap => _missionMap;
  List<Unit> get missionUnits => _missionUnits;

  GameState(this._missionMap, this._missionUnits);
}