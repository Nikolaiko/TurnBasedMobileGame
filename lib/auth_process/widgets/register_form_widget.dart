import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:turn_based_game/auth_process/state/auth_process_state.dart';

class RegisterFormWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final AuthProcessState _state = Provider.of<AuthProcessState>(context);
    
    return Scaffold(      
      appBar: AppBar(title: Text("Register user")),
      body: Padding(
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
              onChanged: (String value) { 
                _state.setNewUsername(value);
              }
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Password",
                hintText: "Enter user password",
                filled: true
              ),
              obscureText: true,
              onChanged: (String value) { 
                _state.setNewPassword(value);
              }
            ),
            ButtonBar(
              children: [
                RaisedButton(                
                  onPressed: () { _state.tryToRegister(); }, 
                  child: Text("Register")
                ),
                FlatButton(                
                  onPressed: () { Navigator.of(context).pop(); }, 
                  child: Text("Back")
                )
              ]
            )          
          ]
        )
      ),
    );
  }  
}