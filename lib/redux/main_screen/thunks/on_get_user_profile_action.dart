import 'package:redux/redux.dart';

import 'package:turn_based_game/model/user_profile/user_profile.dart';
import 'package:turn_based_game/redux/app_state.dart';
import 'package:turn_based_game/redux/base_thunks.dart';
import 'package:turn_based_game/redux/main_screen/main_screen_action.dart';
import 'package:turn_based_game/redux/main_screen/thunks/on_load_user_data_action.dart';
import 'package:turn_based_game/repositories/user_profile/user_profile_repository.dart';

class OnGetUserProfileAction extends BaseUserRepositoryThunk {

  @override
  void execute(
    Store<AppState> store, 
    UserProfileRepository repository
  ) {
    final UserProfile profile = repository.getLoggedUser();
    if (profile is LoggedUser) {
      store.dispatch(OnLoadUserDataAction(profile.id));
      

    } else {
      store.dispatch(const ShowProfileErrorAction());
    }
  }
}