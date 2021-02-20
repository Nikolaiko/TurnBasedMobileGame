import 'package:turn_based_game/model/network/network_response.dart';
import 'package:turn_based_game/model/network/user_auth_data.dart';
import 'package:turn_based_game/model/user_profile/user_profile.dart';

abstract class NetworkService {
  Future loginUser(UserAuthData userData, void Function(NetworkResponse<UserProfile>) callback);
  Future registerUser(UserAuthData userData, void Function(NetworkResponse<UserProfile>) callback);
}