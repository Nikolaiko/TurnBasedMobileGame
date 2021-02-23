import 'package:redux/redux.dart';

import '../../../repositories/user_profile_repository.dart';
import '../../app_state.dart';
import '../../base_thunks.dart';
import '../auth_action.dart';

class OnLoggedUserCheck extends BaseUserRepositoryThunk {
  @override
  Future<void> execute(
      Store<AppState> store, UserProfileRepository repository) async {
    
    var loggedUser = repository.getLoggedUser(); 
    loggedUser.maybeWhen(
      (id, name, password) => store.dispatch(LogUserInAction(loggedUser)),
      orElse: () => store.dispatch(const SetNotLoggedInAction()),
    );
  }
}
