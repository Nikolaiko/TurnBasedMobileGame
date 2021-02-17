import 'package:redux/redux.dart';
import 'package:turn_based_game/model/user_profile/user_profile.dart';
import 'package:turn_based_game/redux/auth/auth_action.dart';
import 'package:turn_based_game/redux/auth/auth_state.dart';

final authReducer = combineReducers<AuthState>([
  TypedReducer<AuthState, LogUserInAction>(_tryToLogin),
  TypedReducer<AuthState, SetNotLoggedInAction>(_setNotLoggedInUser),
]);

AuthState _setNotLoggedInUser(AuthState state, SetNotLoggedInAction action) {  
  return AuthState(NotLoggedUser());
}

AuthState _tryToLogin(AuthState state, LogUserInAction action) {  
  return AuthState(action.userToLogin);
}