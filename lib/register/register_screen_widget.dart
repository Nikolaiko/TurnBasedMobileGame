import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:turn_based_game/register/states/register_screen_state.dart';
import 'package:turn_based_game/register/widgets/register_form_widget.dart';

import '../common/states/auth_state.dart';
import '../network/user_repository.dart';

class RegisterScreenWidget extends StatelessWidget {
  final UserRepository _userRepository;
  final AuthState _authState;

  RegisterScreenWidget(this._userRepository, this._authState);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register User")
      ),
      body: ChangeNotifierProvider<RegisterScreenState>(
        create: (context) {          
          return RegisterScreenState(_userRepository, _authState);
        },
        child: RegisterFormWidget()
      )                  
    );
  }
}