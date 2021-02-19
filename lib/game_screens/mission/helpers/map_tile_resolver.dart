import 'package:turn_based_game/const/map_consts.dart';

class MapTileResolver {
  String getMapImageName(int tileId) {
    String tileImageName = "";
    switch(tileId) {
      case MapConsts.TERRAIN_TILE: {
        tileImageName = MapConsts.TERRAIN_TILE_IMAGE;
        break;
      }
      case MapConsts.WATER_TILE: {
        tileImageName = MapConsts.WATER_TILE_IMAGE;
        break;
      }
    }
    return tileImageName;
  }
}