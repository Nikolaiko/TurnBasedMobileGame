import 'package:redux/redux.dart';

import 'mission_action.dart';
import 'mission_state.dart';

final missionReducer = combineReducers<MissionState>([
   TypedReducer<MissionState, PrepareMissionAction>(_prepareMission),
]);

MissionState _prepareMission(MissionState state, PrepareMissionAction action) {
  return MissionState(action.missionMap, action.missionUnits);
}