import 'package:turn_based_game/model/mission/enums/conflict_side.dart';
import 'package:turn_based_game/model/mission/enums/unit_type.dart';

class Unit {
  final ConflictSide conflictSide;
  final UnitType type;
  int row;
  int column;
  int health;
  int attack;  
  bool alreadyMoved;

  Unit(
    this.conflictSide,
    this.type,
    this.row,
    this.column,
    this.health,
    this.attack,
    { this.alreadyMoved = false }
  );
}