
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

import '../network/network_service.dart';
import '../repositories/user_profile_repository.dart';
import 'app_state.dart';

abstract class BaseUserRepositoryThunk
    implements
        CallableThunkActionWithExtraArgument<AppState, UserProfileRepository> {
  const BaseUserRepositoryThunk();

  @override
  dynamic call(Store<AppState> store, UserProfileRepository repository) =>
      execute(store, repository);

  Future<void> execute(Store<AppState> store, UserProfileRepository repository);
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