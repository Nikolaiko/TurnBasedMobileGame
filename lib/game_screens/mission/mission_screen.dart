import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:turn_based_game/game_screens/mission/game_pole_widgets/game_pole_widget.dart';
import 'package:turn_based_game/game_screens/mission/game_pole_widgets/ui_tiles_widget.dart';
import 'package:turn_based_game/game_screens/mission/game_pole_widgets/units_widget.dart';
import 'package:turn_based_game/game_screens/mission/state/game_state.dart';

class MissionScreen extends StatefulWidget {
  @override
  _MissionScreenState createState() => _MissionScreenState();
}

class _MissionScreenState extends State<MissionScreen> {
  
  @override
  Widget build(BuildContext context) {    
    GameState _state = Provider.of<GameState>(context);    
    return Scaffold( 
      appBar: AppBar(
        actions: <Widget>[
          FlatButton(
            textColor: Colors.white,
            onPressed: () {
              _state.endTurn();
            },
            child: const Text("End turn"),
            shape: const CircleBorder(side: BorderSide(color: Colors.transparent)),
          ),
        ]
      ),     
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Stack(
              children: [
                GamePoleWidget(),
                UnitsWidget(),
                UITilesWidget()
              ]
            )
          ),
        ),
      ),      
    );
  }
}