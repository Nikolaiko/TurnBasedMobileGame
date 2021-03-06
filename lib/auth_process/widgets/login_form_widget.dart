import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../consts/auth_process_routes.dart';
import '../state/auth_process_state.dart';

///Login form widget
class LoginFormWidget extends StatefulWidget {
  @override
  _LoginFormWidgetState createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<LoginFormWidget> {  
  @override
  Widget build(BuildContext context) {
    var _state = Provider.of<AuthProcessState>(context);

    return Scaffold(
      appBar: AppBar(title: const Text("Login User")),
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
                onChanged: (value) {
                  _state.setUsername(value);
                }
              ),
              TextField(
                decoration: const InputDecoration(
                  labelText: "Password",
                  hintText: "Enter user password",
                  filled: true
                ),
                obscureText: true,
                onChanged: (value) { 
                  _state.setPassword(value);
                }
              ),
              ButtonBar(
                children: [
                  RaisedButton(                  
                    onPressed: _state.isLoginEnabled 
                      ? () { _state.tryToLogin(); } 
                      : null, 
                    child: const Text("Login")
                  ),
                  FlatButton(                  
                    onPressed: () { _registerUser(context); },
                    child: const Text("Register")
                  )
                ]
              )                        
            ]
          )
        ),
    );
  }

  void _registerUser(BuildContext context) {
    Navigator.of(context).pushNamed(registerRoute);   
  }
}