
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:turn_based_game/model/mission/unit.dart';

part 'mission_view_model.freezed.dart';

@freezed
abstract class MissionViewModel with _$MissionViewModel {
  const factory MissionViewModel.notStarted() = MissionNotStartedViewModel;
  const factory MissionViewModel.loading() = LoadingMissionState;
  const factory MissionViewModel.ready(
    List<List<int>> missionMap,
    List<Unit> missionUnits,
  ) = MissionReadyViewModel;
}