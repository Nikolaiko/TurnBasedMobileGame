import 'conflict_side.dart';
import 'unit_type.dart';

class Unit {
  final ConflictSide conflictSide;
  final UnitType type;
  int row;
  int column;
  int health;
  int attack;

  Unit(
    this.conflictSide,
    this.type,
    this.row,
    this.column,
    this.health,
    this.attack
  );
}