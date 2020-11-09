import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:turn_based_game/common/states/auth_state.dart';
import 'package:turn_based_game/login/login_screen_widget.dart';

class InitialScreenWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthState>(
      builder: (context, value, child) {
        return ((value.isLoggedIn) ? Container() : LoginScreenWidget());
      }
    );
  }
}