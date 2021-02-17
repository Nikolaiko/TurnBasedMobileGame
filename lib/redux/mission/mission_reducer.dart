import 'package:turn_based_game/redux/mission/mission_action.dart';
import 'package:turn_based_game/redux/mission/mission_state.dart';

import 'package:redux/redux.dart';

final missionReducer = combineReducers<MissionState>([
   TypedReducer<MissionState, PrepareMissionAction>(_prepareMission),
]);

MissionState _prepareMission(MissionState state, PrepareMissionAction action) {
  return MissionState(action.missionMap, action.missionUnits);
}