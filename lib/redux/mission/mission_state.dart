import 'package:freezed_annotation/freezed_annotation.dart';
import '../../model/mission/unit.dart';

part 'mission_state.freezed.dart';

@freezed
abstract class MissionState with _$MissionState {
  static const initialState = MissionNotStarted();

  const factory MissionState(
    List<List<int>> missionMap,
    List<Unit> missionUnits,
  ) = _MissionState;

  const factory MissionState.notStarted() = MissionNotStarted;
}