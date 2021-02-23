import 'package:redux/redux.dart';
import '../../model/user_profile/user_profile.dart';
import 'auth_action.dart';
import 'auth_state.dart';

final authReducer = combineReducers<AuthState>([
  TypedReducer<AuthState, LogUserInAction>(_tryToLogin),
  TypedReducer<AuthState, SetNotLoggedInAction>(_setNotLoggedInUser),
]);

AuthState _setNotLoggedInUser(AuthState state, SetNotLoggedInAction action) {  
  return const AuthState(NotLoggedUser());
}

AuthState _tryToLogin(AuthState state, LogUserInAction action) {  
  return AuthState(action.userToLogin);
}