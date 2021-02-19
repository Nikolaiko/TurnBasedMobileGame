//Test Level Map
import 'package:turn_based_game/model/mission/unit.dart';
import 'package:turn_based_game/model/mission/unit_type.dart';

//1 - Terrain
//2 - Water
const List<List<int>> TEST_LEVEL_MAP = [
  [1,1,1,1,1,1,1,1,1,1],
  [1,1,1,1,1,1,1,1,1,1],
  [1,1,2,2,1,1,1,1,1,1],
  [1,1,2,2,1,1,1,1,1,1],
  [1,1,1,1,1,1,1,1,1,1],
  [1,1,1,1,1,1,1,1,1,1],
  [1,1,1,1,1,1,1,2,2,2],
  [1,1,1,1,1,1,1,2,2,2]
];
    

//Units for tests
Unit firstUnit = Unit(UnitType.infranty, 1, 1, 30, 10);
Unit secondUnit = Unit(UnitType.infranty, 4, 0, 30, 10);
Unit thirdUnit = Unit(UnitType.infranty, 2, 5, 30, 10);
Unit fourthUnit = Unit(UnitType.infranty, 1, 5, 30, 10);
Unit fifthUnit = Unit(UnitType.infranty, 7, 6, 30, 10);

//Putting all units in array
List<Unit> testLevelUnits = [
  firstUnit,
  secondUnit,
  thirdUnit,
  fourthUnit,
  fifthUnit
];