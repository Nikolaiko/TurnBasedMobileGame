import '../model/network/network_response.dart';
import '../model/network/user_auth_data.dart';
import '../model/user_profile/user_profile.dart';

abstract class NetworkService {
  Future<void> loginUser(
    UserAuthData userData, 
    void Function(NetworkResponse<UserProfile>) callback
  );
  Future<void> registerUser(
    UserAuthData userData, 
    void Function(NetworkResponse<UserProfile>) callback
  );
}