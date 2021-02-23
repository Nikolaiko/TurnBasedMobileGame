import 'package:freezed_annotation/freezed_annotation.dart';
import '../../model/user_profile/user_profile.dart';

part 'auth_action.freezed.dart';

@freezed
abstract class AuthAction with _$AuthAction {
  const factory AuthAction.logUserIn(UserProfile userToLogin) = LogUserInAction;
  const factory AuthAction.setNotLoggedInUser() = SetNotLoggedInAction;  
}