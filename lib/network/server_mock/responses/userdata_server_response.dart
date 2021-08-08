import 'package:turn_based_game/network/server_mock/entities/location_entity.dart';
import 'package:turn_based_game/network/server_mock/entities/resource_entity.dart';

class UserDataServerResponse {
  final List<ResourceEntity> resources;
  final List<LocationEntity> locations;

  UserDataServerResponse(
    this.resources,
    this.locations
  );
}