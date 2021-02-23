import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import '../model/user_profile/user_profile.dart';

class UserProfileRepository {
  static const String _loggedUserKey = "logged_user";

  SharedPreferences _prefs;

  UserProfile getLoggedUser() {
    UserProfile currentProfile = const NotLoggedUser();

    if (_prefs.containsKey(_loggedUserKey)) {
      try {
        var userStringProfile = _prefs.getString(_loggedUserKey);
        Map<String, dynamic> jsonMap = json.decode(userStringProfile);
        currentProfile = UserProfile.fromJson(jsonMap);      
      } on Exception catch(error) {
        print(error);        
      }
    }
    return currentProfile;
  }

  Future<bool> setLoggedUser(UserProfile profile) async {
    var stringJson = json.encode(profile.toJson());
    return await _prefs.setString(_loggedUserKey, stringJson);
  }

  Future logoutUser() async {
    return await _prefs.remove(_loggedUserKey);
  }

  Future initPrefs() async {
    _prefs = await SharedPreferences.getInstance();
  }
}