import 'dart:isolate';

import 'package:turn_based_game/model/network/network_response.dart';
import 'package:turn_based_game/model/network/user_auth_data.dart';
import 'package:turn_based_game/model/user_profile/user_profile.dart';
import 'package:uuid/uuid_util.dart';

const String _ID = "123";
const String _USERNAME = "general";
const String _PASSWORD = "123";

List<LoggedUser> _userDB = [
  const LoggedUser(_ID, _USERNAME, _PASSWORD)
];


void tryToLogin(SendPort sendPort) {
  ReceivePort receivePort = ReceivePort();
  receivePort.listen((dynamic receivedData) async {
    if (receivedData is UserAuthData) {
      NetworkResponse<UserProfile> result = await Future.delayed(const Duration(seconds: 2), () {      
        LoggedUser  user = _userDB.firstWhere(
          (item) {          
            return item.password == receivedData.password && item.name == receivedData.name;
          },
          orElse: () {          
            return null;
          }
        );
        if (user == null) {        
          return NetworkResponse(const NotLoggedUser(), false, message: "Wrong credentials");
        } else {        
          return NetworkResponse(user, true, message: "Success");
        }      
      });
      sendPort.send(result);
    }
  });

  sendPort.send(receivePort.sendPort);
}

void tryToRegister(SendPort sendPort) {
  ReceivePort receivePort = ReceivePort();
  receivePort.listen((dynamic receivedData) async {
    if (receivedData is UserAuthData) {
      NetworkResponse<UserProfile> result = await Future.delayed(const Duration(seconds: 2), () {      
        LoggedUser  user = _userDB.firstWhere(
          (item) {
            return item.password == receivedData.password && item.name == receivedData.name;
          }, 
          orElse: () {
            return null;
          }
        );
        if (user == null) {
          LoggedUser newUser = LoggedUser(UuidUtil.cryptoRNG().toString(), receivedData.name, receivedData.password);
          _userDB.add(newUser);
          return NetworkResponse(newUser, true, message: "Success");        
        } else {
          return NetworkResponse(const NotLoggedUser(), false, message: "Already Exist");
        }    
      });
      sendPort.send(result);
    }
  });
  sendPort.send(receivePort.sendPort);
}