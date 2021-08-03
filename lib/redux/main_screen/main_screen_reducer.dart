import 'package:redux/redux.dart';
import 'package:turn_based_game/redux/main_screen/main_screen_action.dart';
import 'package:turn_based_game/redux/main_screen/main_screen_state.dart';

final mainScreenReducer = combineReducers<MainScreenState>([
  TypedReducer<MainScreenState, LoadUserDataAction>(_loadUserData),
  TypedReducer<MainScreenState, ShowProfileErrorAction>(_showErrorScreen),
]);

MainScreenState _loadUserData(
  MainScreenState state, 
  LoadUserDataAction action
) {
  return const MainScreenLoadingState();
}

MainScreenState _showErrorScreen(
  MainScreenState state, 
  ShowProfileErrorAction action
) {  
  return const MainScreenProfileErrorState();
}