import 'package:turn_based_game/model/network/network_response.dart';
import 'package:turn_based_game/model/network/user_auth_data.dart';
import 'package:turn_based_game/model/user_profile/user_profile.dart';
import 'package:turn_based_game/network/server_mock/server_mock.dart';
import 'package:turn_based_game/network/server_mock/user_server_response.dart';

import 'network_service.dart';

class NetworkMockup implements NetworkService {
  final ServerMock _serverMock = ServerMock();

  Future<void> init() async {
    _serverMock.init();
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
  Future<NetworkResponse<UserProfile>> getUserData(String userId) {    
    throw UnimplementedError();
  }
}