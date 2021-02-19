import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:turn_based_game/game_screens/mission/init_widgets/init_mission_widget.dart';
import 'package:turn_based_game/redux/app_state.dart';
import 'package:turn_based_game/redux/auth/thunks/on_logout_user.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {    
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            RaisedButton(
              child: Text("Start game", style: TextStyle(color: Colors.red)),
              onPressed: () {
                Navigator.push(context, 
                  MaterialPageRoute(
                    builder: (routerContext) {
                      return InitMissionWidget();
                    }
                  )
                );
              }
            ),
            RaisedButton(
              child: Text("Logout", style: TextStyle(color: Colors.red)),
              onPressed: () {
                var store = StoreProvider.of<AppState>(context);
                store.dispatch(OnLogoutUser());
              }
            )
          ]      
        ),
      ),
    );
  }
}