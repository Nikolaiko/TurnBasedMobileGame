import '../../../const/map_consts.dart';

///Resolve map tile to image name
class MapTileResolver {

  ///Resolve map tile to image name
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