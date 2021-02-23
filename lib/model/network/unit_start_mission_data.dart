import 'package:freezed_annotation/freezed_annotation.dart';

part 'unit_start_mission_data.freezed.dart';
part 'unit_start_mission_data.g.dart';

@freezed
abstract class UnitStartMissionData with _$UnitStartMissionData {
  const factory UnitStartMissionData(
    String type, 
    int x, 
    int y
  ) = _UnitStartMissionData;

  factory UnitStartMissionData.fromJson(Map<String, dynamic> json) 
                              => _$UnitStartMissionDataFromJson(json);
}