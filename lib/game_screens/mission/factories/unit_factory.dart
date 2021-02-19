import 'package:turn_based_game/game_screens/mission/unit_widget.dart';
import 'package:turn_based_game/model/mission/conflict_side.dart';
import 'package:turn_based_game/model/mission/unit_animation_type.dart';
import 'package:turn_based_game/model/mission/unit_type.dart';

class UnitFactory {
  UnitWidget buildUnit(
    UnitType unitType,
    ConflictSide side,
    UnitAnimationType unitAnimationType,
    { bool flipped = false }
  ) {

    String pathPart = (side == ConflictSide.player) 
    ? "assets/images/mission/units/player/${unitType.getName()}/"
    : "assets/images/mission/units/ai/${unitType.getName()}/";

    String frameName = "${unitType.getName()}_${unitAnimationType.getName()}";
    int animationLength = _getAnimationLengthForType(unitType, unitAnimationType);

    List<String> animationFrames = List();
    for (int i = 1; i <= animationLength; i++) {
      animationFrames.add("$pathPart$frameName$i.png");
    }

    return UnitWidget(animationFrames, flip: flipped);
  }

  int _getAnimationLengthForType(
    UnitType unitType,
    UnitAnimationType unitAnimationType
  ) {
    int frameCount = 1;

    switch(unitType) {
      case UnitType.infranty: {
        frameCount = _getAnimationForSoldier(unitAnimationType);
        break;
      }
      case UnitType.rocket_infranty: {
        frameCount = _getAnimationForSoldier(unitAnimationType);
        break;
      }
      case UnitType.motocycle: {
        frameCount = _getAnimationForSoldier(unitAnimationType);
        break;
      }
      case UnitType.tank: {
        frameCount = _getAnimationForSoldier(unitAnimationType);
        break;
      }
    }
    return frameCount;
  }

  int _getAnimationForSoldier(UnitAnimationType animationType) {
    int frameCount = 1;

    switch(animationType) {
      case UnitAnimationType.move: {
        frameCount = 8;
        break;
      }
      case UnitAnimationType.idle: {
        frameCount = 8;
        break;
      }
      case UnitAnimationType.attack: {
        frameCount = 8;
        break;
      }
      case UnitAnimationType.die: {
        frameCount = 8;
        break;
      }
    }
    return frameCount;
  }
}