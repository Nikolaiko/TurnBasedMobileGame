import 'package:turn_based_game/const/callback_types.dart';
import 'package:turn_based_game/model/network/network_response.dart';
import 'package:turn_based_game/model/network/user_auth_data.dart';
import 'package:turn_based_game/model/user_profile/user_profile.dart';

abstract class NetworkService {
  static const String _versionNumber = "1";
  static const String _baseUrl = "http://192.168.1.170:8080/api/v$_versionNumber";

  static const String userLoginUrl = "$_baseUrl/users/login";
  static const String userRegisterUrl = "$_baseUrl/users/register";

  Future<void> loginUser(
    UserAuthData userData, 
    AuthResponseCallback callback
  );
  Future<void> registerUser(
    UserAuthData userData, 
    AuthResponseCallback callback
  );

  Future<NetworkResponse<UserProfile>> getUserData(String userId);
}