import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:turn_based_game/init/inject_providers.dart';
import 'package:turn_based_game/redux/app_reducer.dart';
import 'package:turn_based_game/redux/app_state.dart';
import 'package:redux/redux.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  final Store<AppState> store = Store<AppState>(
    appReducer,
    initialState: AppState.initState
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
        home: InjectProviders()
      )
    )
  );
}
