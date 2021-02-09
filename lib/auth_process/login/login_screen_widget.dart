import 'package:flutter/material.dart';
import 'package:turn_based_game/auth_process/login/widgets/login_form_widget.dart';

class LoginScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login User")
      ),
      body: LoginFormWidget()              
    );
  }  
}