import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:turn_based_game/model/user_profile/user_profile.dart';
import 'package:turn_based_game/repositories/user_profile/user_profile_repository.dart';

class SharedPreferencesRepository implements UserProfileRepository {
  static const String _loggedUserKey = "logged_user";

  final SharedPreferences _prefs;

  SharedPreferencesRepository(
    this._prefs
  );

  @override
  UserProfile getLoggedUser() {
    UserProfile currentProfile = const NotLoggedUser();

    if (_prefs.containsKey(_loggedUserKey)) {
      try {
        String userStringProfile = _prefs.getString(_loggedUserKey)!;
        Map<String, dynamic> jsonMap = json.decode(userStringProfile);
        currentProfile = LoggedUser.fromJson(jsonMap);      
      } on Exception catch(error) {
        print(error);        
      }
    }
    return currentProfile;
  }

  @override
  Future<bool> setLoggedUser(UserProfile profile) {
    var stringJson = json.encode(profile.toJson());
    return _prefs.setString(_loggedUserKey, stringJson);
  }

  @override
  Future logoutUser() {
    return _prefs.remove(_loggedUserKey);
  }  
}