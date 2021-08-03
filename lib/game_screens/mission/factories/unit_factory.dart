import 'package:flutter/cupertino.dart';
import 'package:turn_based_game/game_screens/mission/unit_widget.dart';
import 'package:turn_based_game/model/mission/enums/conflict_side.dart';
import 'package:turn_based_game/model/mission/enums/unit_animation_type.dart';
import 'package:turn_based_game/model/mission/enums/unit_type.dart';

class UnitFactory {

  UnitWidget buildUnit(
    UnitType unitType,
    ConflictSide side,
    UnitAnimationType unitAnimationType,
    { 
      bool flipped = false,
      bool alreadyMoved = false,
      VoidCallback? animationCallback
    }
  ) {

    print(unitAnimationType);
    var pathPart = (side == ConflictSide.player) 
      ? "assets/images/mission/units/player/${unitType.getName()}/"
      : "assets/images/mission/units/ai/${unitType.getName()}/";

    var frameName = "${unitType.getName()}_${unitAnimationType.getName()}";
    var animationLength = 
      _getAnimationLengthForType(unitType, unitAnimationType);

    var animationFrames = List<String>.empty(growable: true);
    for (var i = 1; i <= animationLength; i++) {
      animationFrames.add("$pathPart$frameName$i.png");
    }

    if (unitAnimationType == UnitAnimationType.die) {
      print(animationFrames);
      print(animationCallback);
    }
    
    return UnitWidget(
      animationFrames, 
      flip: flipped, 
      alreadyMoved: alreadyMoved,
      animationCallback: animationCallback,
    );
  }

  int _getAnimationLengthForType(
    UnitType unitType,
    UnitAnimationType unitAnimationType
  ) {
    var frameCount = 1;

    switch(unitType) {
      case UnitType.infranty: {
        frameCount = _getAnimationForSoldier(unitAnimationType);
        break;
      }
      case UnitType.rocketInfranty: {
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
    var frameCount = 1;

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
        frameCount = 6;
        break;
      }
      case UnitAnimationType.die: {
        frameCount = 9;
        break;
      }
    }
    return frameCount;
  }
}