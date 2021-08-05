import 'package:redux/redux.dart';

import 'package:turn_based_game/network/network_service.dart';
import 'package:turn_based_game/redux/app_state.dart';
import 'package:turn_based_game/redux/base_thunks.dart';

class OnLoadUserDataAction extends BaseNetworkThunk {

  final String _userId;

  OnLoadUserDataAction(this._userId);

  @override
  Future<void> execute(
    Store<AppState> store, 
    NetworkService repository
  ) async {
    repository.getUserData(_userId);
    
  }
}