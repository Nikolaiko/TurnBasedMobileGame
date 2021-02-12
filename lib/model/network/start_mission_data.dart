import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:turn_based_game/model/network/unit_start_mission_data.dart';

part 'start_mission_data.freezed.dart';
part 'start_mission_data.g.dart';

@freezed
abstract class StartMissionData with _$StartMissionData {  

  const factory StartMissionData(
    List<UnitStartMissionData> enemyUnits, 
    List<UnitStartMissionData> playerUnits, 
    List<List<String>> tilemap
  ) = _StartMissionData;

  factory StartMissionData.fromJson(Map<String, dynamic> json) => _$StartMissionDataFromJson(json);
}