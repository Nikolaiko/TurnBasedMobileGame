library login_data_serializers;

import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:turn_based_game/network/dto/user_data/user_login_data_dto.dart';

part 'user_login_data_serializer.g.dart';

@SerializersFor(const [
  UserLoginDataDto,
])

final Serializers loginDataSerializers =
    (_$loginDataSerializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();