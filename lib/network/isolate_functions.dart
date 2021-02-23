import 'dart:isolate';

import 'package:uuid/uuid_util.dart';

import '../model/network/network_response.dart';
import '../model/network/user_auth_data.dart';
import '../model/user_profile/user_profile.dart';

const String _id = "123";
const String _username = "general";
const String _password = "123";

List<LoggedUser> _userDB = [
  const LoggedUser(_id, _username, _password)
];


void tryToLogin(SendPort sendPort) {
  var receivePort = ReceivePort();
  receivePort.listen((dynamic receivedData) async {
    if (receivedData is UserAuthData) {
      var result = await Future.delayed(const Duration(seconds: 2), () {      
        var  user = _userDB.firstWhere(
          (item) {          
            return item.password == receivedData.password && 
                   item.name == receivedData.name;
          },
          orElse: () {          
            return null;
          }
        );
        if (user == null) {        
          return NetworkResponse(
            const NotLoggedUser(), 
            success: false, 
            message: "Wrong credentials"
          );
        } else {        
          return NetworkResponse(user, success: true, message: "Success");
        }      
      });
      sendPort.send(result);
    }
  });

  sendPort.send(receivePort.sendPort);
}

void tryToRegister(SendPort sendPort) {
  var receivePort = ReceivePort();
  receivePort.listen((dynamic receivedData) async {
    if (receivedData is UserAuthData) {
      var result = await Future.delayed(const Duration(seconds: 2), () {      
        var user = _userDB.firstWhere(
          (item) {
            return item.password == receivedData.password && 
                   item.name == receivedData.name;
          }, 
          orElse: () {
            return null;
          }
        );
        if (user == null) {
          var newUser = LoggedUser(
            UuidUtil.cryptoRNG().toString(), 
            receivedData.name, 
            receivedData.password
          );
          _userDB.add(newUser);
          return NetworkResponse(
            newUser, 
            success: true, 
            message: "Success"
          );        
        } else {
          return NetworkResponse(
            const NotLoggedUser(), 
            success: false, 
            message: "Already Exist"
          );
        }    
      });
      sendPort.send(result);
    }
  });
  sendPort.send(receivePort.sendPort);
}