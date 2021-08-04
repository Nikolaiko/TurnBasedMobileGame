

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:turn_based_game/model/campagin/location_data.dart';

part 'user_data.freezed.dart';

@freezed
class UserData {
  const factory UserData(
    int level,
    int experiense,
    int nextLevelExp,
    int tokens,
    List<LocationData> locations
  ) = _UserData;
}