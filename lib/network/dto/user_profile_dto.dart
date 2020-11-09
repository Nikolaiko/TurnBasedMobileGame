import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_profile_dto.g.dart';

abstract class UserProfileDto implements Built<UserProfileDto, UserProfileDtoBuilder> {

  UserProfileDto._();

  factory UserProfileDto([updates(UserProfileDtoBuilder b)]) = _$UserProfileDto;
  static Serializer<UserProfileDto> get serializer => _$userProfileDtoSerializer;

  String get id;

  String get name;

  String get password;
}