import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:turn_based_game/redux/app_state.dart';

import 'package:redux/redux.dart';

class LoginFormWidget extends StatefulWidget {
  @override
  _LoginFormWidgetState createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<LoginFormWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 32),
        child: Column(                
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: "Name",
                hintText: "Enter user name",
                filled: true
              ),
              onChanged: (String value) => { }
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Password",
                hintText: "Enter user password",
                filled: true
              ),
              obscureText: true,
              onChanged: (String value) => { }
            ),
            ButtonBar(
              children: [
                RaisedButton(                  
                  onPressed: null, 
                  child: Text("Login")
                ),
                FlatButton(                  
                  onPressed: null, 
                  child: Text("Register")
                )
              ]
            )                        
          ]
        )
      );
  }
}