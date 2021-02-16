import 'package:turn_based_game/redux/app_state.dart';
import 'package:turn_based_game/redux/auth/auth_reducer.dart';
import 'package:turn_based_game/redux/mission/mission_reducer.dart';

AppState appReducer(AppState prevState, dynamic action) {
  return AppState(
    authReducer(prevState.authState, action),
    missionReducer(prevState.missionState, action)
  );
}