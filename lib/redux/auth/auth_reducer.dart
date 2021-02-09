import 'package:turn_based_game/redux/auth/auth_action.dart';
import 'package:turn_based_game/redux/auth/auth_state.dart';

import 'package:redux/redux.dart';

final authReducer = combineReducers<AuthState>([
  TypedReducer<AuthState, LogUserInAction>(_tryToLogin),
  TypedReducer<AuthState, SetNotLoggedInAction>(_setNotLoggedInUser),
]);

AuthState _setNotLoggedInUser(AuthState state, SetNotLoggedInAction action) {
  print("Setting not login in");
  return AuthState(action.notLoggedInUser);
}

AuthState _tryToLogin(AuthState state, LogUserInAction action) {
  print("Log user in");
  return AuthState(action.userToLogin);
}