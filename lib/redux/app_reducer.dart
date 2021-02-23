import 'app_state.dart';
import 'auth/auth_reducer.dart';
import 'mission/mission_reducer.dart';

AppState appReducer(AppState prevState, dynamic action) {
  return AppState(
    authReducer(prevState.authState, action),
    missionReducer(prevState.missionState, action)
  );
}