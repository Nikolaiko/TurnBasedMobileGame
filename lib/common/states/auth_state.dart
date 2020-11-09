import 'package:flutter/cupertino.dart';
import 'package:turn_based_game/common/model/user_profile.dart';

class AuthState with ChangeNotifier {
  bool _isLoggedIn = false;
  UserProfile _loggedUser;

  bool get isLoggedIn => _isLoggedIn;
  UserProfile get loggedUser => _loggedUser;

  void logoutUser() {
    _isLoggedIn = false;
    _loggedUser = null;
    notifyListeners();
  }

  void loginUser(UserProfile user) {
    _isLoggedIn = true;
    _loggedUser = user;
    notifyListeners();
  }
}