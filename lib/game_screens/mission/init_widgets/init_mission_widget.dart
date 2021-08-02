import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:turn_based_game/game_screens/mission/init_widgets/prepare_mission_widget.dart';
import 'package:turn_based_game/game_screens/mission/mission_loading_screen.dart';
import 'package:turn_based_game/redux/app_state.dart';
import 'package:turn_based_game/redux/mission/mission_view_model.dart';
import 'package:turn_based_game/redux/mission/thunks/on_load_mission_action.dart';

class InitMissionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {    
    return StoreConnector<AppState, MissionViewModel>(
      onInit: (store) => store.dispatch(OnLoadMissionAction()),
      converter: (store) {        
        return store.state.missionState.maybeWhen((missionMap, missionUnits) {
          return MissionViewModel.ready(
            missionMap,
            missionUnits
          );
        }, 
        orElse: () {
          return const MissionViewModel.loading();
        });
      },
      builder: (context, viewModel) => viewModel.maybeWhen(
        ready: (missionMap, missionUnits) {
          return PrepareMissionWidget(missionMap, missionUnits);
        },
        orElse: () {
          return MissionLoadingScreen();
        }
      )
    );
  }
}