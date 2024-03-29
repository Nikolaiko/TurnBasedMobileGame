import 'package:freezed_annotation/freezed_annotation.dart';
import 'unit.dart';

part 'unit_action.freezed.dart';

@freezed
abstract class UnitAction with _$UnitAction {
  const factory UnitAction.empty() = UnitEmptyAction;
  const factory UnitAction.move(
    Unit unit, 
    int destRow, 
    int destColumn,
    int startRow, 
    int startColumn
  ) = UnitMove;
  const factory UnitAction.attack(
    Unit agressor,
    Unit victim,
    {
      @Default(false)
      bool mirroredVictim
    }        
  ) = UnitAttack;
  const factory UnitAction.die(
    Unit unit,
    {
      @Default(false)
      bool mirrored
    }
  ) = UnitDie;
}