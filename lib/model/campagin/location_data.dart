import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:turn_based_game/model/campagin/enums/location_status_enum.dart';
import 'package:turn_based_game/model/campagin/short_mission_data.dart';

part 'location_data.freezed.dart';

@freezed
class LocationData with _$LocationData{
  const factory LocationData(
    String id,
    String name,    
    List<ShortMissionData> missions
  ) = _LocationData;
}