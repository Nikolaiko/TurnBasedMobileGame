import 'package:turn_based_game/const/map_consts.dart';

class MapTileResolver {
  String getMapImageName(int tileId) {
    String tileImageName = "";
    switch(tileId) {
      case MapConsts.TERRAIN_TILE: {
        tileImageName = "assets/images/mission/terrain_tile.png";
        break;
      }
      case MapConsts.WATER_TILE: {
        tileImageName = "assets/images/mission/water_tile.png";
        break;
      }
    }
    return tileImageName;
  }
}