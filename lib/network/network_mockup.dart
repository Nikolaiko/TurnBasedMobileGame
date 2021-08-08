import 'package:turn_based_game/model/campagin/enums/mission_status_enum.dart';
import 'package:turn_based_game/model/campagin/location_data.dart';
import 'package:turn_based_game/model/campagin/short_mission_data.dart';
import 'package:turn_based_game/model/network/network_response.dart';
import 'package:turn_based_game/model/network/user_auth_data.dart';
import 'package:turn_based_game/model/user_profile/user_data.dart';
import 'package:turn_based_game/model/user_profile/user_profile.dart';
import 'package:turn_based_game/network/server_mock/db_names.dart';
import 'package:turn_based_game/network/server_mock/entities/location_entity.dart';
import 'package:turn_based_game/network/server_mock/entities/mission_entity.dart';
import 'package:turn_based_game/network/server_mock/responses/userdata_server_response.dart';
import 'package:turn_based_game/network/server_mock/server_mock.dart';
import 'package:turn_based_game/network/server_mock/responses/user_server_response.dart';

import 'network_service.dart';

class NetworkMockup implements NetworkService {
  final ServerMock _serverMock = ServerMock();

  Future<void> init() async {
    await _serverMock.init();
  }

  @override
  Future<NetworkResponse<UserProfile>> loginUser(
    UserAuthData userData,     
  ) async {
    UserServerResponse? response = await _serverMock.tryToLogin(userData);
    if (response != null) {
      return NetworkResponse<UserProfile>(
        LoggedUser(response.id, response.login, response.password),
        success: true
      );
    } else {
      return NetworkResponse<UserProfile>(
        const NotLoggedUser(),
        success: false,
        message: "Something wrong!"
      );
    }
  }

  @override
  Future<NetworkResponse<UserProfile>> registerUser(
    UserAuthData userData    
  ) async {
    UserServerResponse? response = await _serverMock.tryToRegister(userData);
    if (response != null) {
      return NetworkResponse<UserProfile>(
        LoggedUser(response.id, response.login, response.password),
        success: true
      );
    } else {
      return NetworkResponse<UserProfile>(
        const NotLoggedUser(),
        success: false,
        message: "Something wrong!"
      );
    }
  }

  @override
  Future<NetworkResponse<UserData>> getUserData(
    String userId
  ) async {    
    UserData userData = const EmptyUserData();

    UserDataServerResponse? data = await _serverMock.tryToGetUserData(userId);
    if (data != null) {
      List<LocationData> locations = List.empty(growable: true);
      for (LocationEntity location in data.locations) {
        List<ShortMissionData> missions = List.empty(growable: true);
        for (MissionEntity mission in location.missions) {
          ShortMissionData shortMissionData = ShortMissionData(
            mission.id.toString(),
            mission.name,
            mission.status == missionCompletedStatus
              ? MissionStatus.completed
              : MissionStatus.notCompleted
          );
          missions.add(shortMissionData);
        }
        LocationData locationData = LocationData(
          location.id.toString(),
          location.name,
          missions
        );
        locations.add(locationData);
      }

      userData = UserData(
        data.resources.first.amount,
        locations
      );
    }
    return NetworkResponse<UserData>(
      userData, 
      success: data != null
    );
  }
}