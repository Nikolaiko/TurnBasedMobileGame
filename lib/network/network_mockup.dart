import 'dart:isolate';

import 'package:turn_based_game/model/network/network_response.dart';
import 'package:turn_based_game/model/network/user_auth_data.dart';
import 'package:turn_based_game/model/user_profile/user_profile.dart';

import 'isolate_functions.dart';
import 'network_service.dart';

class NetworkMockup implements NetworkService {

  @override
  Future loginUser(
    UserAuthData userData, 
    void Function(NetworkResponse<UserProfile>) callback
  ) async {
    var receivePort = ReceivePort();
    var isolate = await Isolate.spawn<SendPort>(
      tryToLogin, 
      receivePort.sendPort
    ); 
    
    receivePort.listen((dynamic receivedData) {
      print('Получены новые данные из нового изолята : $receivedData');
      if (receivedData is SendPort) {
        receivedData.send(userData);
      }
      else if (receivedData is NetworkResponse<UserProfile>) {        
        isolate.kill(priority: Isolate.immediate);        
        receivePort.close();

        callback(receivedData);
      }
    });
  }

  @override
  Future<void> registerUser(
    UserAuthData userData, 
    void Function(NetworkResponse<UserProfile>
  ) callback) async {
    var receivePort = ReceivePort();

    var isolate = await Isolate.spawn<SendPort>(
      tryToRegister, 
      receivePort.sendPort
    ); 
    receivePort.listen((dynamic receivedData) {
      print('Получены новые данные из нового изолята : $receivedData');
      if (receivedData is SendPort) {
        receivedData.send(userData);
      }
      else if (receivedData is NetworkResponse<UserProfile>) {        
        isolate.kill(priority: Isolate.immediate);        
        receivePort.close();

        callback(receivedData);
      }
    });
  }

  @override
  Future<NetworkResponse<UserProfile>> getUserData(String userId) {    
    throw UnimplementedError();
  }
}