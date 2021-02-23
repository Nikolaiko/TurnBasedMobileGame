import 'package:freezed_annotation/freezed_annotation.dart';
import '../../model/mission/unit.dart';

part 'mission_action.freezed.dart';

@freezed
abstract class MissionAction with _$MissionAction {
  const factory MissionAction.prepareMission(
    List<List<int>> missionMap,
    List<Unit> missionUnits
  ) = PrepareMissionAction;
}