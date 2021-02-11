import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:turn_based_game/auth_process/login_screen_widget.dart';
import 'package:turn_based_game/game_screens/main_screen.dart';
import 'package:turn_based_game/init/initial_loading_screen.dart';
import 'package:turn_based_game/redux/app_state.dart';
import 'package:turn_based_game/redux/auth/auth_view_model.dart';

import 'package:redux/redux.dart';
import 'package:turn_based_game/redux/auth/thunks/on_logged_user_check.dart';

class InitialScreenWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AuthViewModel>(      
      converter: (Store<AppState> store) {
        print(store.state.authState.user);
        return store.state.authState.user.when(
          (id, name, password) => AuthViewModel.logged(), 
          notLoggedIn: () => AuthViewModel.notLogged(), 
          initialUser: () {
            store.dispatch(OnLoggedUserCheck());
            return AuthViewModel.init();
          } 
        );
      },
      builder: (context, viewModel) => viewModel.when(
        init: () => InitialLoadingScreen(), 
        logged: () => MainScreen(), 
        notLogged: () => LoginScreenWidget()
      )
    );
  }
}