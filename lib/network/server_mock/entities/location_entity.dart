import 'package:turn_based_game/network/server_mock/entities/mission_entity.dart';

class LocationEntity {
  final int id;
  final String name;
  final List<MissionEntity> missions;

  LocationEntity(
    this.id,
    this.name,
    this.missions
  );

  void addMission(MissionEntity newMission) {
    missions.add(newMission);
  }
}