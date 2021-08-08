import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:get_it/get_it.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:turn_based_game/repositories/user_profile/shared_preferences_repository.dart';

import 'init/initial_screen.dart';
import 'network/network_mockup.dart';
import 'network/network_service.dart';
import 'redux/app_reducer.dart';
import 'redux/app_state.dart';
import 'repositories/user_profile/user_profile_repository.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  var _prefs = await SharedPreferences.getInstance();
  var _userProfileRepositories = SharedPreferencesRepository(_prefs);

  GetIt.instance.registerSingleton<UserProfileRepository>(
    _userProfileRepositories
  );


  NetworkMockup networkService = NetworkMockup();
  await networkService.init();

  GetIt.instance.registerSingleton<NetworkService>(networkService);

  var store = Store<AppState>(
    appReducer,
    initialState: AppState.initState,
    middleware: [
      ExtraArgumentThunkMiddleware<AppState, UserProfileRepository>(
        _userProfileRepositories
      ),
      ExtraArgumentThunkMiddleware<AppState, NetworkService>(networkService)
    ]
  );

  runApp(
    StoreProvider(
      store: store, 
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
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
