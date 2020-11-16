library serializers;

import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:turn_based_game/network/dto/user_data/user_profile_dto.dart';

part 'user_profile_serializer.g.dart';

@SerializersFor(const [
  UserProfileDto,
])

final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();