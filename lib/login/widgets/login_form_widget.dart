import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:turn_based_game/common/states/auth_state.dart';
import 'package:turn_based_game/login/states/login_screen_state.dart';
import 'package:turn_based_game/network/user_repository.dart';
import 'package:turn_based_game/register/register_screen_widget.dart';
import 'package:turn_based_game/widgets/common/LoadingIndicator.dart';

class LoginFormWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    LoginScreenState _state = Provider.of<LoginScreenState>(context);
    UserRepository _user = Provider.of<UserRepository>(context);
    AuthState _auth = Provider.of<AuthState>(context);

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
              onChanged: (String value) => _state.setName(value)
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Password",
                hintText: "Enter user password",
                filled: true
              ),
              obscureText: true,
              onChanged: (String value) => _state.setPassword(value)
            ),
            ButtonBar(
              children: [
                RaisedButton(                  
                  onPressed: ((!_state.loginButtonEnabled) ? null : (){ _sendLoginRequest(_state); } ), 
                  child: Text("Login")
                ),
                FlatButton(                  
                  onPressed: () { _openRegisterScreen(context, _user, _auth); }, 
                  child: Text("Register")
                )
              ]
            )                        
          ]
        )
      );
  }

  void _sendLoginRequest(LoginScreenState state) {
    state.tryLogin();
  }

  void _openRegisterScreen(BuildContext context, UserRepository userRepository, AuthState authState) {

    Navigator.of(context).push(
      MaterialPageRoute(builder: (BuildContext context) {
        return RegisterScreenWidget(userRepository, authState);
      })
    );    
  }

}