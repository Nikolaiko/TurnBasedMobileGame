import 'package:redux/redux.dart';

import '../../../model/mission/conflict_side.dart';
import '../../../model/mission/unit.dart';
import '../../../model/mission/unit_type.dart';
import '../../../network/network_service.dart';
import '../../app_state.dart';
import '../../base_thunks.dart';
import '../mission_action.dart';

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