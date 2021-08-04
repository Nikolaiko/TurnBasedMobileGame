import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:turn_based_game/model/campagin/enums/mission_status_enum.dart';

part 'short_mission_data.freezed.dart';

@freezed
class ShortMissionData with _$ShortMissionData {
  const factory ShortMissionData(
    String id,
    String name,
    MissionStatus status
  ) = _ShortMissionStatus;
}