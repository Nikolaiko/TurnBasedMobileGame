import 'package:redux/redux.dart';
import 'package:turn_based_game/model/network/network_response.dart';
import 'package:turn_based_game/model/user_profile/user_data.dart';

import 'package:turn_based_game/network/network_service.dart';
import 'package:turn_based_game/redux/app_state.dart';
import 'package:turn_based_game/redux/base_thunks.dart';
import 'package:turn_based_game/redux/main_screen/main_screen_action.dart';

class OnLoadUserDataAction extends BaseNetworkThunk {

  final String _userId;

  OnLoadUserDataAction(this._userId);

  @override
  Future<void> execute(
    Store<AppState> store, 
    NetworkService service
  ) async {
    NetworkResponse<UserData> response = await service.getUserData(_userId);
    UserData userData = response.result;

    if (userData is EmptyUserData) {
      store.dispatch(const ShowLoadUserDataErrorAction());
    } else {
      store.dispatch(ShowUserDataAction(userData));
    }
  }
}