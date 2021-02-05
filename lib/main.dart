import 'package:flutter/material.dart';
import 'package:turn_based_game/init/inject_providers.dart';
import 'package:turn_based_game/redux/app_state.dart';
import 'package:redux/redux.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  final Store<AppState> store = Store<AppState>(
    
  );


  runApp(
    MaterialApp(
      title: "Turn Based App",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: InjectProviders()
    )
  );
}
