import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:turn_based_game/register/states/register_screen_state.dart';

class RegisterFormWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    RegisterScreenState _state = Provider.of<RegisterScreenState>(context);

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
                onPressed: ((!_state.registerButtonEnabled) ? null : (){ _sendRegisterRequest(_state); } ), 
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
    );
  }

  void _sendRegisterRequest(RegisterScreenState state) {
    state.tryRegister();
  }
}