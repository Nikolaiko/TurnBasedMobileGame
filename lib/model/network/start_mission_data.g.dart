// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'start_mission_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StartMissionData _$_$_StartMissionDataFromJson(Map<String, dynamic> json) {
  return _$_StartMissionData(
    (json['enemyUnits'] as List<dynamic>)
        .map((e) => UnitStartMissionData.fromJson(e as Map<String, dynamic>))
        .toList(),
    (json['playerUnits'] as List<dynamic>)
        .map((e) => UnitStartMissionData.fromJson(e as Map<String, dynamic>))
        .toList(),
    (json['tilemap'] as List<dynamic>)
        .map((e) => (e as List<dynamic>).map((e) => e as String).toList())
        .toList(),
  );
}

Map<String, dynamic> _$_$_StartMissionDataToJson(
        _$_StartMissionData instance) =>
    <String, dynamic>{
      'enemyUnits': instance.enemyUnits,
      'playerUnits': instance.playerUnits,
      'tilemap': instance.tilemap,
    };
