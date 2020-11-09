import 'package:flutter/material.dart';
import 'package:turn_based_game/init/inject_providers.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
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
