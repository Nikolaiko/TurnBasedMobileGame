
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:turn_based_game/network/network_service.dart';
import 'package:turn_based_game/repositories/user_profile/user_profile_repository.dart';


import 'app_state.dart';

abstract class BaseUserRepositoryThunk
    implements
        CallableThunkActionWithExtraArgument<AppState, UserProfileRepository> {
  const BaseUserRepositoryThunk();

  @override
  dynamic call(Store<AppState> store, UserProfileRepository repository) =>
      execute(store, repository);

  void execute(Store<AppState> store, UserProfileRepository repository);
}


abstract class BaseNetworkThunk 
  implements 
    CallableThunkActionWithExtraArgument<AppState, NetworkService> {
  
  const BaseNetworkThunk();

  @override
  dynamic call(Store<AppState> store, NetworkService service) =>
      execute(store, service);

  Future<void> execute(Store<AppState> store, NetworkService service);
}