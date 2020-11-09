import 'dart:convert' as convert;

import 'package:turn_based_game/common/model/user_profile.dart';
import 'package:turn_based_game/network/dto/user_login_data_dto.dart';
import 'package:turn_based_game/network/dto/user_login_data_serializer.dart';
import 'package:turn_based_game/network/dto/user_profile_dto.dart';
import 'package:turn_based_game/network/dto/user_profile_serializer.dart';
import 'package:turn_based_game/network/network_constants.dart';

import 'package:http/http.dart' as http;
import 'package:turn_based_game/network/network_response.dart';

class UserRepository {
  Future<NetworkResponse<UserProfile>> tryLoginUser(String name, String password) async {
    final loginData = UserLoginDataDto(
      (builder) => builder
        ..name = name
        ..password = password
    );
    NetworkResponse<UserProfile> result;

    var client = http.Client();
    try {            
      var response = await http.post(
        NetworkConstants.user_login_url,
        body: loginDataSerializers.serializeWith(UserLoginDataDto.serializer, loginData)
      );

      if (response.statusCode == 200) {
        final jsonResponse = convert.jsonDecode(response.body);
        UserProfileDto dtoObject = serializers.deserializeWith(UserProfileDto.serializer, jsonResponse);
        result = NetworkResponse<UserProfile>(_convertDtoToUserProfile(dtoObject), true);
      } else {
        result = NetworkResponse<UserProfile>(null, false, message: 'Request failed with status: ${response.statusCode}');        
      }
    } catch(e) {
      result = NetworkResponse<UserProfile>(null, false, message: 'Request failed with error: $e');        
    } finally {
      client.close();
    }
    return result;
  } 

  UserProfile _convertDtoToUserProfile(UserProfileDto dto) {
    return UserProfile(
      dto.id, 
      dto.name, 
      dto.password
    );
  }
}