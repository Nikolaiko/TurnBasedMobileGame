import 'package:turn_based_game/model/user_profile/user_profile.dart';

class LogUserInAction {
  final UserProfile userToLogin;

  LogUserInAction(this.userToLogin);
}

class SetNotLoggedInAction {
  final UserProfile notLoggedInUser = NotLoggedUser();  
}