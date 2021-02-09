import 'package:shared_preferences/shared_preferences.dart';
import 'package:turn_based_game/model/user_profile/user_profile.dart';

import 'dart:convert';

class UserProfileRepository {
  static const String _LOGGED_USER_KEY = "logged_user";

  SharedPreferences _prefs;

  UserProfile getLoggedUser() {
    UserProfile currentProfile = NotLoggedUser();

    if (_prefs.containsKey(_LOGGED_USER_KEY)) {
      try {
        String userStringProfile = _prefs.getString(_LOGGED_USER_KEY);
        Map<String, dynamic> jsonMap = json.decode(userStringProfile);
        currentProfile = UserProfile.fromJson(jsonMap);      
      } catch(error) {
        print(error);        
      }
    }
    return currentProfile;
  }

  Future<bool> setLoggedUser(UserProfile profile) async {
    String stringJson = json.encode(profile.toJson());
    return await _prefs.setString(_LOGGED_USER_KEY, stringJson);
  }

  Future initPrefs() async {
    _prefs = await SharedPreferences.getInstance();
  }
}