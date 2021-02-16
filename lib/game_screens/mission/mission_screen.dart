import 'package:flutter/material.dart';
import 'package:turn_based_game/game_screens/mission/game_pole_widget.dart';
import 'package:turn_based_game/game_screens/mission/units_widget.dart';

class MissionScreen extends StatefulWidget {
  @override
  _MissionScreenState createState() => _MissionScreenState();
}

class _MissionScreenState extends State<MissionScreen> {
  
  @override
  Widget build(BuildContext context) {
    //ScreenDimensions dimensions = ScreenDimensions(context);
    return Scaffold( 
      appBar: AppBar(),     
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Stack(
              children: [
                GamePoleWidget(),
                UnitsWidget()
              ]
            )
          ),
        ),
      ),      
    );
  }
}