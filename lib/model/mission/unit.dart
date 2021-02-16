import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:turn_based_game/model/mission/unit_type.dart';

part 'unit.freezed.dart';

@freezed
abstract class Unit with _$Unit {
  const factory Unit(
    UnitType type,
    int row,
    int column,
    int health,
    int attack
  ) = _Unit;
}