import 'package:redux/redux.dart';
import 'package:turn_based_game/model/user_profile/user_profile.dart';
import 'package:turn_based_game/redux/app_state.dart';
import 'package:turn_based_game/redux/auth/auth_action.dart';
import 'package:turn_based_game/repositories/user_profile_repository.dart';

import '../../base_thunks.dart';

class OnLoggedUserCheck extends BaseUserRepositoryThunk {
  @override
  Future<void> execute(
      Store<AppState> store, UserProfileRepository repository) async {
    print('thunk exec');

    UserProfile loggedUser =
        repository.getLoggedUser(); // long comment to reach 80 symbols
    // UserProfile('', '', ''); //
    loggedUser.maybeWhen(
      (id, name, password) => store.dispatch(LogUserInAction(loggedUser)),
      orElse: () => store.dispatch(SetNotLoggedInAction()),
    );
  }
}
