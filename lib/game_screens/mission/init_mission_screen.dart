import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:turn_based_game/redux/app_state.dart';
import 'package:turn_based_game/redux/mission/mission_view_model.dart';

class InitMissionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, MissionViewModel>(
      converter: (store) {
        
      },
    );
  }
}