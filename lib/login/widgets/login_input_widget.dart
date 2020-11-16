import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:turn_based_game/login/states/login_screen_state.dart';
import 'package:turn_based_game/register/register_screen.dart';

class LoginInputWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    LoginScreenState state = Provider.of<LoginScreenState>(context);

    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 32),
        child: Column(                
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: "Name",
                hintText: "Enter user name"
              ),
              onChanged: (String value) => state.setName(value)
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Name",
                hintText: "Enter user name"
              ),
              onChanged: (String value) => state.setPassword(value)
            ),
            FlatButton(
              color: Colors.blue,              
              onPressed: ((!state.loginButtonEnabled) ? null : (){ _sendLoginRequest(state); } ), 
              child: Text("Login")
            ),
            FlatButton(
              color: Colors.blue,              
              onPressed: () { _openRegisterScreen(context); }, 
              child: Text("Register")
            )
          ]
        )
      );
  }

  void _sendLoginRequest(LoginScreenState state) {
    state.tryLogin();
  }

  void _openRegisterScreen(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (BuildContext context) => RegisterScreen())
    );    
  }

}