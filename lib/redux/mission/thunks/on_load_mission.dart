import 'package:redux/redux.dart';
import 'package:turn_based_game/model/mission/conflict_side.dart';
import 'package:turn_based_game/model/mission/unit.dart';
import 'package:turn_based_game/model/mission/unit_type.dart';
import 'package:turn_based_game/network/network_service.dart';
import 'package:turn_based_game/redux/app_state.dart';
import 'package:turn_based_game/redux/mission/mission_action.dart';

import '../../base_thunks.dart';

class OnLoadMission extends BaseNetworkThunk {
  List<List<int>> map = [
    [1,1,1,1,1,1,1,1,1,1],
    [1,1,1,1,1,1,1,1,1,1],
    [1,1,2,2,1,1,1,1,1,1],
    [1,1,2,2,1,1,1,1,1,1],
    [1,1,1,1,1,1,1,1,1,1],
    [1,1,1,1,1,1,1,1,1,1],
    [1,1,1,1,1,1,1,2,2,2],
    [1,1,1,1,1,1,1,2,2,2]
  ];

  List<Unit> units = [
    Unit(ConflictSide.player, UnitType.infranty, 1, 1, 30, 10),
    Unit(ConflictSide.player, UnitType.infranty, 4, 1, 30, 10),
    Unit(ConflictSide.player, UnitType.infranty, 2, 5, 30, 10),
    Unit(ConflictSide.enemy, UnitType.infranty, 6, 5, 30, 10),
    Unit(ConflictSide.enemy, UnitType.infranty, 0, 5, 30, 10)
  ];

  @override
  Future<void> execute(
      Store<AppState> store, NetworkService service) async {
    
    Future.delayed(const Duration(seconds: 2), () {

      store.dispatch(PrepareMissionAction(map, units));

    });
  }
}