import 'package:turn_based_game/model/mission/enums/ui_tile_type.dart';

enum AvaliableTileType {
  not_available,
  forMove,
  forAttack
}

extension ParseToUIType on AvaliableTileType {
  UITileType convertToUIType() {
    UITileType uiType = UITileType.empty;
    switch(this) {
      case AvaliableTileType.not_available: {
        uiType = UITileType.empty;
        break;
      }
      case AvaliableTileType.forAttack: {
        uiType = UITileType.attack;
        break;
      }
      case AvaliableTileType.forMove: {
        uiType = UITileType.checkmark;
        break;
      }
    }
    return uiType;
  }  
}