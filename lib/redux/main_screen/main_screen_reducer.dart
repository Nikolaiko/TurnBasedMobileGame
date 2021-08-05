import 'package:redux/redux.dart';
import 'package:turn_based_game/redux/main_screen/main_screen_action.dart';
import 'package:turn_based_game/redux/main_screen/main_screen_state.dart';
import 'package:turn_based_game/redux/main_screen/thunks/on_load_user_data_action.dart';

final mainScreenReducer = combineReducers<MainScreenState>([
  TypedReducer<MainScreenState, OnLoadUserDataAction>(_loadUserData),
  TypedReducer<MainScreenState, ShowProfileErrorAction>(_showErrorScreen),
]);

MainScreenState _loadUserData(
  MainScreenState state, 
  OnLoadUserDataAction action
) {
  return const MainScreenLoadingState();
}

MainScreenState _showErrorScreen(
  MainScreenState state, 
  ShowProfileErrorAction action
) {  
  return const MainScreenProfileErrorState();
}