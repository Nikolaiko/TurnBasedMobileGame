import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:turn_based_game/redux/main_screen/main_screen_state.dart';
import 'auth/auth_state.dart';
import 'mission/mission_state.dart';

part 'app_state.freezed.dart';

@freezed
abstract class AppState with _$AppState {
  static const initState = AppState(
    AuthState.initState,
    MissionState.initialState,
    MainScreenState.initState
  );

  const factory AppState(
    AuthState authState,
    MissionState missionState,
    MainScreenState mainScreenState
  ) = _AppState;
}