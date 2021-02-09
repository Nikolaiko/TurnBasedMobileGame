import 'package:turn_based_game/model/user_profile/user_profile.dart';
import 'package:turn_based_game/redux/app_state.dart';
import 'package:turn_based_game/redux/auth/auth_action.dart';
import 'package:turn_based_game/redux/base_thunks.dart';
import 'package:turn_based_game/repositories/user_profile_repository.dart';

import 'package:redux/src/store.dart';

class OnLoggedUserCheck extends BaseUserRepositoryThunk {

  @override
  Future<void> execute(Store<AppState> store, UserProfileRepository repository) async {
    Future.delayed(Duration(milliseconds: 5), () {
      UserProfile loggedUser = repository.getLoggedUser();
      loggedUser.maybeWhen(
        (id, name, password) => store.dispatch(LogUserInAction(loggedUser)),
        orElse: () => store.dispatch(SetNotLoggedInAction())
      );
    });            
  }
}