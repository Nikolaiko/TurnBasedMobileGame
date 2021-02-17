import 'package:turn_based_game/model/mission/unit_type.dart';

class Unit {
  final UnitType type;
  int row;
  int column;
  int health;
  int attack;

  Unit(
    this.type,
    this.row,
    this.column,
    this.health,
    this.attack
  );
}