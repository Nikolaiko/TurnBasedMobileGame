import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:turn_based_game/redux/auth/auth_state.dart';
import 'package:turn_based_game/redux/mission/mission_state.dart';

part 'app_state.freezed.dart';

@freezed
abstract class AppState with _$AppState {
  static const initState = AppState(
    AuthState.initState,
    MissionState.initialState
  );

  const factory AppState(
    AuthState authState,
    MissionState missionState
  ) = _AppState;
}