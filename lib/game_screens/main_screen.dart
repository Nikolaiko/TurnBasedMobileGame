import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {    
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            RaisedButton(
              child: Text("Start game", style: TextStyle(color: Colors.red)),
              onPressed: null
            )
          ]      
        ),
      ),
    );
  }
}