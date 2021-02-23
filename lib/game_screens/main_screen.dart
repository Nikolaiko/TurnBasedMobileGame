import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import '../redux/app_state.dart';
import '../redux/auth/thunks/on_logout_user.dart';
import 'mission/init_widgets/init_mission_widget.dart';

///Main game screen widget
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
              child: const Text(
                "Start game", 
                style: TextStyle(color: Colors.red)
              ),
              onPressed: () {
                Navigator.push(context, 
                  MaterialPageRoute<dynamic>(
                    builder: (routerContext) {
                      return InitMissionWidget();
                    }
                  )
                );
              }
            ),
            RaisedButton(
              child: const Text("Logout", style: TextStyle(color: Colors.red)),
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