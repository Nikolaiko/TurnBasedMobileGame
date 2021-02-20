import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:turn_based_game/init/initial_loading_screen.dart';
import 'package:turn_based_game/redux/app_state.dart';
import 'package:turn_based_game/redux/auth/auth_view_model.dart';
import 'package:turn_based_game/redux/auth/thunks/on_logged_user_check.dart';

import '../auth_process/login_screen_widget.dart';
import '../game_screens/main_screen.dart';

class InitialScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AuthViewModel>(
      onInit: (store) => store.dispatch(OnLoggedUserCheck()),
      converter: (store) {        
        return store.state.authState.user.when((id, name, password) {          
          return const AuthViewModel.logged();
        }, notLoggedIn: () {          
          return const AuthViewModel.notLogged();
        }, initialUser: () {          
          return const AuthViewModel.init();
        });
      },
      builder: (context, viewModel) => viewModel.when(
        init: () => InitialLoadingScreen(),
        logged: () => MainScreen(),
        notLogged: () => LoginScreenWidget(),
      ),
    );
  }
}
