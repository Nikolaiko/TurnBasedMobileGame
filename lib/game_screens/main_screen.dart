import 'package:flutter/material.dart';
import 'package:turn_based_game/game_screens/mission/mission_screen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {    
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            RaisedButton(
              child: Text("Start game", style: TextStyle(color: Colors.red)),
              onPressed: () {
                Navigator.push(context, 
                  MaterialPageRoute(
                    builder: (routerContext) {
                      return MissionScreen();
                    }
                  )
                );
              }
            )
          ]      
        ),
      ),
    );
  }
}