import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:get_it/get_it.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

import 'init/initial_screen.dart';
import 'network/network_mockup.dart';
import 'network/network_service.dart';
import 'redux/app_reducer.dart';
import 'redux/app_state.dart';
import 'repositories/user_profile_repository.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  var _userProfileRepositories = UserProfileRepository();
  await _userProfileRepositories.initPrefs();

  NetworkService _networkService = NetworkMockup();

  GetIt.instance.registerSingleton<UserProfileRepository>(
    _userProfileRepositories
  );
  GetIt.instance.registerSingleton<NetworkService>(_networkService);

  var store = Store<AppState>(
    appReducer,
    initialState: AppState.initState,
    middleware: [
      ExtraArgumentThunkMiddleware<AppState, UserProfileRepository>(
        _userProfileRepositories
      ),
      ExtraArgumentThunkMiddleware<AppState, NetworkService>(_networkService)
    ]
  );

  runApp(
    StoreProvider(
      store: store, 
      child: MaterialApp(
        title: "Turn Based App",
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: InitialScreenWidget()
      )
    )
  );
}
