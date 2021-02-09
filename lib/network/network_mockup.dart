import 'package:turn_based_game/network/network_response.dart';
import 'package:turn_based_game/model/user_profile/user_profile.dart';
import 'package:turn_based_game/model/network/user_auth_data.dart';
import 'package:turn_based_game/network/network_service.dart';

class NetworkMockup implements NetworkService {
  static const String _ID = "123";
  static const String _USERNAME = "general";
  static const String _PASSWORD = "123";

  List<LoggedUser> _userDB = List();

  NetworkMockup() {
    _userDB.add(LoggedUser(_ID, _USERNAME, _PASSWORD));
  }

  @override
  Future<NetworkResponse<UserProfile>> loginUser(UserAuthData userData) async {
    NetworkResponse result = await Future.delayed(Duration(seconds: 2), () {      
      LoggedUser  user = _userDB.firstWhere((item) {
        return item.password == userData.password && item.name == userData.name;
      });
      if (user == null) {
        return NetworkResponse(NotLoggedUser(), false, message: "Wrong credentials");
      } else {
        return NetworkResponse(user, true, message: "Success");
      }      
    });
    return result;
  }

  @override
  Future<NetworkResponse<UserProfile>> registerUser(UserAuthData userData) async {
    NetworkResponse result = await Future.delayed(Duration(seconds: 2), () {      
      LoggedUser  user = _userDB.firstWhere((item) {
        return item.password == userData.password && item.name == userData.name;
      });
      if (user == null) {
        LoggedUser newUser = LoggedUser(userData.id, userData.name, userData.password);
        _userDB.add(newUser);
        return NetworkResponse(newUser, true, message: "Success");        
      } else {
        return NetworkResponse(NotLoggedUser(), false, message: "Already Exist");
      }      
    });
    return result;
  }

}