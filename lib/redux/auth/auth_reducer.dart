import 'package:turn_based_game/redux/auth/auth_action.dart';
import 'package:turn_based_game/redux/auth/auth_state.dart';

import 'package:redux/redux.dart';

final authReducer = combineReducers<AuthState>([
  TypedReducer<AuthState, LoginAction>(_tryToLogin),
]);

AuthState _tryToLogin(AuthState state, LoginAction action) {
  return state;
}