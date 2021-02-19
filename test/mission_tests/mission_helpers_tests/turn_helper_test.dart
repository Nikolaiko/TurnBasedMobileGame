@TestOn('vm')

import 'dart:math';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:test/test.dart';
import 'package:turn_based_game/game_screens/mission/helpers/turn_logic_resolver.dart';

import '../../test_data.dart';


void main() {

  group("Turn logic helper testing", () {

    test("get available cells test", () {
      //Given
      TurnLogicResolver resolver = TurnLogicResolver(TEST_LEVEL_MAP);


      //When
      List<Point<int>> tiles = resolver.getAvailableTiles(firstUnit, testLevelUnits);      


      //Ждем, что юнит в 1,1 получит все 4 клетки для движения.
      List<Point<int>> expected = [
        Point<int>(1, 0),
        Point<int>(1, 2),
        Point<int>(0, 1),
        Point<int>(2, 1)
      ];

      //Then
      expect(DeepCollectionEquality.unordered().equals(expected, tiles), true);
    });

    test("get available cells ignore pole border test", () {
      TurnLogicResolver resolver = TurnLogicResolver(TEST_LEVEL_MAP);


      List<Point<int>> tiles = resolver.getAvailableTiles(secondUnit, testLevelUnits);      


      //Юнит в 4,0 получит три клетки для движения. Одна отскеается краем поля
      List<Point<int>> expected = [
        Point<int>(4, 1),
        Point<int>(3, 0),
        Point<int>(5, 0),      
      ];

      expect(DeepCollectionEquality.unordered().equals(expected, tiles), true);
    });

    test("get available cells ignore another unit test", () {
      TurnLogicResolver resolver = TurnLogicResolver(TEST_LEVEL_MAP);


      List<Point<int>> tiles = resolver.getAvailableTiles(thirdUnit, testLevelUnits);      


      //Юнит в 2,5 получит три клетки для движения. Одна отскеается другим юнитом 1,5
      List<Point<int>> expected = [
        Point<int>(3, 5),
        Point<int>(2, 4),
        Point<int>(2, 6),      
      ];

      expect(DeepCollectionEquality.unordered().equals(expected, tiles), true);
    });

    test("get available cells ignore obstacle test", () {
      TurnLogicResolver resolver = TurnLogicResolver(TEST_LEVEL_MAP);


      List<Point<int>> tiles = resolver.getAvailableTiles(fifthUnit, testLevelUnits);      


      //Юнит в 7,6 получит две клетки для движения. 
      //Одна отскеается водной клеткой, другая границой экрана
      List<Point<int>> expected = [
        Point<int>(7, 5),
        Point<int>(6, 6),        
      ];

      expect(DeepCollectionEquality.unordered().equals(expected, tiles), true);
    });

  });
}