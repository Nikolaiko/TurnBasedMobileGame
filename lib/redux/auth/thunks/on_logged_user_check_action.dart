import 'package:redux/redux.dart';
import 'package:turn_based_game/model/user_profile/user_profile.dart';
import 'package:turn_based_game/redux/app_state.dart';
import 'package:turn_based_game/redux/auth/auth_action.dart';
import 'package:turn_based_game/redux/base_thunks.dart';
import 'package:turn_based_game/repositories/user_profile/user_profile_repository.dart';


class OnLoggedUserCheckAction extends BaseUserRepositoryThunk {
  @override
  Future<void> execute(
      Store<AppState> store, UserProfileRepository repository) async {
    
    UserProfile loggedUser = repository.getLoggedUser(); 
    loggedUser.maybeWhen(
      (id, name, password) {
        return store.dispatch(LogUserInAction(loggedUser)) as Object;
      },
      orElse: () => store.dispatch(const SetNotLoggedInAction()) as Object,
    );
  }
}
