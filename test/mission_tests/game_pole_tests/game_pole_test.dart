


import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:turn_based_game/const/map_consts.dart';
import 'package:turn_based_game/game_screens/mission/game_pole_widgets/game_pole_widget.dart';
import 'package:turn_based_game/game_screens/mission/state/game_state.dart';

import '../../test_data.dart';


void main() {


  testWidgets("testing game pole tiles generation", (WidgetTester tester) async {
    await tester.pumpWidget(
      ChangeNotifierProvider(
        create: (context) => GameState(TEST_LEVEL_MAP, testLevelUnits),
        child: Consumer<GameState>(
          builder: (context, value, child) =>
          MaterialApp(
            home: Scaffold( 
              appBar: AppBar(),     
              body: SafeArea(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Stack(
                      children: [
                        GamePoleWidget()                      
                      ]
                    )
                  ),
                ),
              ),      
            ),
          )
        )
      )
    );

    Finder waterTilesFinder = find.bySemanticsLabel(MapConsts.WATER_TILE_LABEL);
    Finder terrainTilesFinder = find.bySemanticsLabel(MapConsts.TERRAIN_TILE_LABEL);
    expect(waterTilesFinder, findsNWidgets(10));
    expect(terrainTilesFinder, findsNWidgets(70));
  });
}