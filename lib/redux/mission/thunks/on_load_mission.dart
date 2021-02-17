import 'package:redux/redux.dart';
import 'package:turn_based_game/model/mission/unit.dart';
import 'package:turn_based_game/model/mission/unit_type.dart';
import 'package:turn_based_game/model/user_profile/user_profile.dart';
import 'package:turn_based_game/network/network_service.dart';
import 'package:turn_based_game/redux/app_state.dart';
import 'package:turn_based_game/redux/auth/auth_action.dart';
import 'package:turn_based_game/redux/mission/mission_action.dart';
import 'package:turn_based_game/repositories/user_profile_repository.dart';

import '../../base_thunks.dart';

class OnLoadMission extends BaseNetworkThunk {
  List<List<int>> map = [
    [1,1,1,1,1,1,1,1,1,1],
    [1,1,1,1,1,1,1,1,1,1],
    [1,1,1,1,1,1,1,1,1,1],
    [1,1,1,1,1,1,1,1,1,1],
    [1,1,1,1,1,1,1,1,1,1],
    [1,1,1,1,1,1,1,1,1,1],
    [1,1,1,1,1,1,1,1,1,1],
    [1,1,1,1,1,1,1,1,1,1]
  ];

  List<Unit> units = [
    Unit(UnitType.infranty, 1, 1, 30, 10),
    Unit(UnitType.infranty, 4, 1, 30, 10),
    Unit(UnitType.infranty, 2, 3, 30, 10)
  ];

  @override
  Future<void> execute(
      Store<AppState> store, NetworkService service) async {
    
    Future.delayed(const Duration(seconds: 2), () {

      store.dispatch(PrepareMissionAction(map, units));

    });
  }
}