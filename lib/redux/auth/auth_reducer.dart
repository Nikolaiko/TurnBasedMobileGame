import 'package:turn_based_game/redux/auth/auth_state.dart';

import 'package:redux/redux.dart';

final authReducer = combineReducers<AuthState>([
  TypedReducer<AuthState, SetFavorites>(_setFavorites),
]);

AuthState _setFavorites(FavoritesState state, SetFavorites action) {
  return state.copyWith(favoritesMap: action.favorites);
}