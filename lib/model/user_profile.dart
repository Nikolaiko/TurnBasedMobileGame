import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile.freezed.dart';

@freezed
abstract class UserProfile with _$UserProfile {
  const factory UserProfile(String id, String name, String password) = _UserProfile;
  const factory UserProfile.notLoggedIn() = NotLoggedUser;
}