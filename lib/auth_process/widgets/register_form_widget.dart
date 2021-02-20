import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:turn_based_game/auth_process/state/auth_process_state.dart';

class RegisterFormWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final AuthProcessState _state = Provider.of<AuthProcessState>(context);
    
    return Scaffold(      
      appBar: AppBar(title: const Text("Register user")),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: "Name",
                hintText: "Enter user name",
                filled: true
              ),
              onChanged: (String value) { 
                _state.setNewUsername(value);
              }
            ),
            TextField(
              decoration: const InputDecoration(
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
                  child: const Text("Register")
                ),
                FlatButton(                
                  onPressed: () { Navigator.of(context).pop(); }, 
                  child: const Text("Back")
                )
              ]
            )          
          ]
        )
      ),
    );
  }  
}