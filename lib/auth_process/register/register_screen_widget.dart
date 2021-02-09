import 'package:flutter/material.dart';
import 'package:turn_based_game/auth_process/register/widgets/register_form_widget.dart';

class RegisterScreenWidget extends StatelessWidget {
  const RegisterScreenWidget();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register User")
      ),
      body: RegisterFormWidget()                  
    );
  }
}