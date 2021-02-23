import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import '../../../redux/app_state.dart';
import '../../../redux/mission/mission_view_model.dart';
import '../../../redux/mission/thunks/on_load_mission_action.dart';
import '../mission_loading_screen.dart';
import 'prepare_mission_widget.dart';

class InitMissionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {    
    return StoreConnector<AppState, MissionViewModel>(
      onInit: (store) => store.dispatch(OnLoadMissionAction()),
      converter: (store) {
        print(store.state.missionState);
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