import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:turn_based_game/common/states/auth_state.dart';
import 'package:turn_based_game/login/states/login_screen_state.dart';
import 'package:turn_based_game/login/widgets/login_input_widget.dart';
import 'package:turn_based_game/network/user_repository.dart';

class LoginScreenWidget extends StatefulWidget {
  @override
  _LoginScreenWidgetState createState() => _LoginScreenWidgetState();
}

class _LoginScreenWidgetState extends State<LoginScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login User")
      ),
      body: ChangeNotifierProvider<LoginScreenState>(
        create: (context) {
          UserRepository repository = Provider.of<UserRepository>(context, listen: false);
          AuthState authState = Provider.of<AuthState>(context, listen: false);
          return LoginScreenState(repository, authState);
        },
        child: LoginInputWidget()
      )                  
    );
  }
}