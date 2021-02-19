@TestOn('vm')

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:test/test.dart';
import 'package:turn_based_game/game_screens/mission/state/game_state.dart';
import 'package:turn_based_game/model/mission/ui_tile.dart';
import 'package:turn_based_game/model/mission/ui_tile_type.dart';
import 'package:turn_based_game/model/mission/unit.dart';
import 'package:turn_based_game/model/mission/unit_action.dart';

import '../../test_data.dart';



void main() {

  group("Mission state tests", () {
    
    test("Game state select tiles arount tapped unit", () {

      //Given
      GameState testingState = GameState(TEST_LEVEL_MAP, testLevelUnits);


      //When
      testingState.unitTap(firstUnit);

      
      //Ждем, что state  при тапе в 1,1 подсветит все 4 клетки.
      List<UITile> expected = [
        UITile(UITileType.checkmark, 1, 0),
        UITile(UITileType.checkmark, 1, 2),
        UITile(UITileType.checkmark, 0, 1),
        UITile(UITileType.checkmark, 2, 1)        
      ];

      //Then
      expect(DeepCollectionEquality.unordered().equals(expected, testingState.uiMap), true);
    });



    test("Game state send move action after tap on tile to corrct unit and coordinates", () {
      Unit unitForTest = firstUnit;
      int testUnitStartRow = unitForTest.row;
      int testUnitStartCol = unitForTest.column;

      int testUnitEndRow;
      int testUnitEndCol;

      //Given
      GameState testingState = GameState(TEST_LEVEL_MAP, testLevelUnits);
      testingState.actionsStream.listen(
        expectAsync1<void, UnitAction>(
          (action) {
            //Then
            action.maybeWhen(
              move: (Unit unit, int destRow, int destColumn, int startRow, int startColumn) {
                expect(unitForTest, unit);
                expect(testUnitStartCol, startColumn);
                expect(testUnitStartRow, startRow);
                expect(testUnitEndCol, destColumn);
                expect(testUnitEndRow, destRow);
              }, 
              orElse: () => expect(true, false)
            );            
          }, 
          count: 1,
          max: 0)
      );

      //When
      testingState.unitTap(unitForTest);

      List<UITile> availableTiles = testingState.uiMap;
      testUnitEndRow = availableTiles.first.row;
      testUnitEndCol = availableTiles.first.column;
      testingState.tileTap(testUnitEndRow, testUnitEndCol);
    });


    test("Game state send move action after tap on tile available for move", () {

      //Given
      GameState testingState = GameState(TEST_LEVEL_MAP, testLevelUnits);
      testingState.actionsStream.listen(
        expectAsync1<void, UnitAction>(
          (action) {
            //Then
            action.maybeWhen(
              move: (Unit unit, int destRow, int destColumn, int startRow, int startColumn) => expect(true, true),
              orElse: () => expect(true, false)
            );            
          }, 
          count: 1,
          max: 0)
      );

      //When
      testingState.unitTap(firstUnit);
      List<UITile> availableTiles = testingState.uiMap;
      testingState.tileTap(availableTiles.first.row, availableTiles.first.column);
      
    });

  });
}