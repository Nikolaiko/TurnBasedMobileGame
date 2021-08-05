import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:turn_based_game/init/initial_loading_screen.dart';
import 'package:turn_based_game/redux/app_state.dart';
import 'package:turn_based_game/redux/main_screen/main_screen_view_model.dart';
import 'package:turn_based_game/redux/main_screen/thunks/on_get_user_profile_action.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, MainScreenViewModel>(
      distinct: true,
      onInit: (store) => store.dispatch(OnGetUserProfileAction()),
      converter: (store) {
        return store.state.mainScreenState.when(
          initial: () => const MainScreenEmptyViewModel(),
          loading: () => const MainScreenLoadingViewModel(), 
          ready: () => const MainScreenReadyViewModel(), 
          profileError: () => const MainScreenProfileErrorViewModel()
        );
      },
      builder: (context, viewModel) {
        return viewModel.when(
          init: () => InitialLoadingScreen(), 
          loading: () => InitialLoadingScreen(), 
          ready: () => InitialLoadingScreen(), 
          profileError: () => InitialLoadingScreen()
        );        
      }      
    );
  }

  // @override
  // Widget build(BuildContext context) {    
  //   return Scaffold(
  //     body: SafeArea(
  //       child: Column(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         crossAxisAlignment: CrossAxisAlignment.stretch,
  //         children: [
  //           RaisedButton(
  //             child: const Text(
  //               "Start game", 
  //               style: TextStyle(color: Colors.red)
  //             ),
  //             onPressed: () {
  //               Navigator.push(context, 
  //                 MaterialPageRoute<dynamic>(
  //                   builder: (routerContext) {
  //                     return InitMissionWidget();
  //                   }
  //                 )
  //               );
  //             }
  //           ),
  //           RaisedButton(
  //             child: const Text("Logout", style: TextStyle(color: Colors.red)),
  //             onPressed: () {
  //               var store = StoreProvider.of<AppState>(context);
  //               store.dispatch(OnLogoutUserAction());
  //             }
  //           )
  //         ]      
  //       ),
  //     ),
  //   );
  // }
}