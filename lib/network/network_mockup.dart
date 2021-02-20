import 'dart:isolate';

import 'package:turn_based_game/model/network/network_response.dart';
import 'package:turn_based_game/model/user_profile/user_profile.dart';
import 'package:turn_based_game/model/network/user_auth_data.dart';
import 'package:turn_based_game/network/isolate_functions.dart';
import 'package:turn_based_game/network/network_service.dart';

class NetworkMockup implements NetworkService {

  @override
  Future loginUser(UserAuthData userData, void Function(NetworkResponse<UserProfile>) callback) async {
    ReceivePort receivePort = ReceivePort();

    Isolate isolate = await Isolate.spawn<SendPort>(tryToLogin, receivePort.sendPort); 
    receivePort.listen((dynamic receivedData) {
      print('Получены новые данные из нового изолята : $receivedData');
      if (receivedData is SendPort) {
        receivedData.send(userData);
      }
      else if (receivedData is NetworkResponse<UserProfile>) {        
        isolate.kill(priority: Isolate.immediate);
        isolate = null;
        receivePort.close();

        callback(receivedData);
      }
    });
  }

  @override
  Future registerUser(UserAuthData userData, void Function(NetworkResponse<UserProfile>) callback) async {
    ReceivePort receivePort = ReceivePort();

    Isolate isolate = await Isolate.spawn<SendPort>(tryToRegister, receivePort.sendPort); 
    receivePort.listen((dynamic receivedData) {
      print('Получены новые данные из нового изолята : $receivedData');
      if (receivedData is SendPort) {
        receivedData.send(userData);
      }
      else if (receivedData is NetworkResponse<UserProfile>) {        
        isolate.kill(priority: Isolate.immediate);
        isolate = null;
        receivePort.close();

        callback(receivedData);
      }
    });
  }
}