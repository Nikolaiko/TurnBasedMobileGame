import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:turn_based_game/register/states/register_screen_state.dart';
import 'package:turn_based_game/register/widgets/register_input_widget.dart';

import '../common/states/auth_state.dart';
import '../network/user_repository.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register User")
      ),
      body: ChangeNotifierProvider<RegisterScreenState>(
        create: (context) {
          UserRepository repository = Provider.of<UserRepository>(context, listen: false);
          AuthState authState = Provider.of<AuthState>(context, listen: false);
          return RegisterScreenState(repository, authState);
        },
        child: RegisterInputWidget()
      )                  
    );
  }
}