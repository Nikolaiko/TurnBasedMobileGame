import 'dart:isolate';

import 'package:collection/collection.dart';
import 'package:turn_based_game/model/network/network_response.dart';
import 'package:turn_based_game/model/network/user_auth_data.dart';
import 'package:turn_based_game/model/user_profile/user_profile.dart';
import 'package:uuid/uuid_util.dart';



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
        LoggedUser? user = _userDB.firstWhereOrNull(
          (item) {          
            return item.password == receivedData.password && 
                   item.name == receivedData.name;
          }          
        );
        var response = (user == null) 
          ? NetworkResponse(
            const NotLoggedUser(), 
            success: false, 
            message: "Wrong credentials"
          )
          : NetworkResponse(user, success: true, message: "Success");
          
        return response;      
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
        LoggedUser? user = _userDB.firstWhereOrNull(
          (item) {
            return item.password == receivedData.password && 
                   item.name == receivedData.name;
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