import 'package:turn_based_game/const/map_consts.dart';

class MapTileResolver {  
  String getMapImageName(int tileId) {
    var tileImageName = "";
    switch(tileId) {
      case MapConsts.terrainTile: {
        tileImageName = MapConsts.terrainTileImage;
        break;
      }
      case MapConsts.waterTile: {
        tileImageName = MapConsts.waterTileImage;
        break;
      }
    }
    return tileImageName;
  }
}