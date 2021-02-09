import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:turn_based_game/init/initial_loading_screen.dart';
import 'package:turn_based_game/login/login_screen_widget.dart';
import 'package:turn_based_game/redux/app_state.dart';
import 'package:turn_based_game/redux/auth/auth_view_model.dart';

import 'package:redux/redux.dart';

class InitialScreenWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AuthViewModel>(      
      converter: (Store<AppState> store) {
        return store.state.authState.user.when(
          (id, name, password) => AuthViewModel.logged(), 
          notLoggedIn: () => AuthViewModel.notLogged(), 
          initialUser: () {
            store.dispatch();
            return AuthViewModel.init();
          } 
        );
      },
      builder: (context, viewModel) => viewModel.when(
        init: () => InitialLoadingScreen(), 
        logged: () => LoginScreenWidget(), 
        notLogged: () => LoginScreenWidget()
      )
    );
  }
}