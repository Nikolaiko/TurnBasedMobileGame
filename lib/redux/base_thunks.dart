
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

import 'package:turn_based_game/redux/app_state.dart';
import 'package:turn_based_game/repositories/user_profile_repository.dart';

abstract class BaseUserRepositoryThunk
    implements
        CallableThunkActionWithExtraArgument<AppState, UserProfileRepository> {
  const BaseUserRepositoryThunk();

  @override
  dynamic call(Store<AppState> store, UserProfileRepository repository) =>
      execute(store, repository);

  Future<void> execute(Store<AppState> store, UserProfileRepository repository);
}