import 'package:redux/redux.dart';

import '../../../repositories/user_profile_repository.dart';
import '../../app_state.dart';
import '../../base_thunks.dart';
import '../auth_action.dart';

class OnLogoutUser extends BaseUserRepositoryThunk {
  @override
  Future<void> execute(
    Store<AppState> store, UserProfileRepository repository) async {
    await repository.logoutUser();

    store.dispatch(const AuthAction.setNotLoggedInUser());
  }
}