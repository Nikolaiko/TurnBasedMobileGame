import 'package:redux/redux.dart';
import 'package:turn_based_game/redux/auth/auth_action.dart';
import 'package:turn_based_game/redux/auth/auth_state.dart';

final authReducer = combineReducers<AuthState>([
  TypedReducer<AuthState, LogUserInAction>(_tryToLogin),
  TypedReducer<AuthState, SetNotLoggedInAction>(_setNotLoggedInUser),
]);

AuthState _setNotLoggedInUser(AuthState state, SetNotLoggedInAction action) {
  print("Setting not logged in");
  return AuthState(action.notLoggedInUser);
}

AuthState _tryToLogin(AuthState state, LogUserInAction action) {
  print("Setting userToLogin");
  return AuthState(action.userToLogin);
}
