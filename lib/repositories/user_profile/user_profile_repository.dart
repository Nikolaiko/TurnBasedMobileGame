import 'package:turn_based_game/model/user_profile/user_profile.dart';

abstract class UserProfileRepository {
  UserProfile getLoggedUser();
  Future<bool> setLoggedUser(UserProfile profile);
  Future<void> logoutUser();
}