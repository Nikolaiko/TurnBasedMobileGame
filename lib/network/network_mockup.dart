import 'package:turn_based_game/model/network/network_response.dart';
import 'package:turn_based_game/model/user_profile/user_profile.dart';
import 'package:turn_based_game/model/network/user_auth_data.dart';
import 'package:turn_based_game/network/network_service.dart';
import 'package:uuid/uuid.dart';
import 'package:uuid/uuid_util.dart';

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
    NetworkResponse<UserProfile> result = await Future.delayed(Duration(seconds: 2), () {      
      LoggedUser  user = _userDB.firstWhere(
        (item) {
          print("login");
          return item.password == userData.password && item.name == userData.name;
        },
        orElse: () {
          print("or else");
          return null;
        }
      );
      if (user == null) {
        print("login = null");
        return NetworkResponse(NotLoggedUser(), false, message: "Wrong credentials");
      } else {
        print("login != null");
        return NetworkResponse(user, true, message: "Success");
      }      
    });

    print(result.message);
    print(result.result);

    return result;
  }

  @override
  Future<NetworkResponse<UserProfile>> registerUser(UserAuthData userData) async {
    NetworkResponse result = await Future.delayed(Duration(seconds: 2), () {      
      LoggedUser  user = _userDB.firstWhere((item) {
        return item.password == userData.password && item.name == userData.name;
      });
      if (user == null) {
        LoggedUser newUser = LoggedUser(UuidUtil.cryptoRNG().toString(), userData.name, userData.password);
        _userDB.add(newUser);
        return NetworkResponse(newUser, true, message: "Success");        
      } else {
        return NetworkResponse(NotLoggedUser(), false, message: "Already Exist");
      }      
    });
    return result;
  }

  
}