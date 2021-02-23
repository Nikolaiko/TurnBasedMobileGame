import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile.freezed.dart';
part 'user_profile.g.dart';

@freezed
abstract class UserProfile with _$UserProfile {
  const factory UserProfile(
    String id, 
    String name, 
    String password
  ) = LoggedUser;
  const factory UserProfile.notLoggedIn() = NotLoggedUser;
  const factory UserProfile.initialUser() = InitialUser;

  factory UserProfile.fromJson(Map<String, dynamic> json) => 
                                    _$UserProfileFromJson(json);
}