import 'package:redux/redux.dart';
import 'package:turn_based_game/redux/app_state.dart';
import 'package:turn_based_game/redux/auth/auth_action.dart';
import 'package:turn_based_game/repositories/user_profile_repository.dart';

import '../../base_thunks.dart';

class OnLogoutUser extends BaseUserRepositoryThunk {
  @override
  Future<void> execute(
    Store<AppState> store, UserProfileRepository repository) async {
    await repository.logoutUser();

    store.dispatch(const AuthAction.setNotLoggedInUser());
  }
}