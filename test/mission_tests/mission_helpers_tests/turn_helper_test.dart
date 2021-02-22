@TestOn('vm')

import 'dart:math';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:test/test.dart';
import 'package:turn_based_game/game_screens/mission/helpers/turn_logic_resolver.dart';

import '../../test_data.dart';


void main() {

  group("Turn logic helper testing", () {

    test("get available infranty cells test", () {      
      TurnLogicResolver resolver = TurnLogicResolver(TEST_LEVEL_MAP);

      List<Point<int>> tiles = resolver.getAvailableTiles(firstUnit, testLevelUnits);      

      List<Point<int>> expected = [
        Point(1, 2), 
        Point(1, 3), 
        Point(1, 4), 
        Point(0, 4), 
        Point(2, 4), 
        Point(0, 2), 
        Point(0, 3), 
        Point(0, 1), 
        Point(0, 0), 
        Point(1, 0), 
        Point(2, 0), 
        Point(2, 1), 
        Point(3, 1), 
        Point(3, 0), 
        Point(4, 1), 
        Point(4, 2), 
        Point(5, 1)
      ];

      expect(DeepCollectionEquality.unordered().equals(expected, tiles), true);
    });
  });
}