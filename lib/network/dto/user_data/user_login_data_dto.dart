import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_login_data_dto.g.dart';

abstract class UserLoginDataDto implements Built<UserLoginDataDto, UserLoginDataDtoBuilder> {

  UserLoginDataDto._();

  factory UserLoginDataDto([updates(UserLoginDataDtoBuilder b)]) = _$UserLoginDataDto;
  static Serializer<UserLoginDataDto> get serializer => _$userLoginDataDtoSerializer;

  String get name;

  String get password;
}