import 'package:turn_based_game/model/network/network_response.dart';
import 'package:turn_based_game/model/network/user_auth_data.dart';
import 'package:turn_based_game/model/user_profile/user_profile.dart';

abstract class NetworkService {
  Future<NetworkResponse<UserProfile>> loginUser(UserAuthData userData);
  Future<NetworkResponse<UserProfile>> registerUser(UserAuthData userData);
}