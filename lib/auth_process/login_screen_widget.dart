import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:turn_based_game/auth_process/state/auth_process_state.dart';
import 'package:turn_based_game/auth_process/widgets/auth_navigator.dart';
import 'package:turn_based_game/network/network_service.dart';
import 'package:turn_based_game/redux/app_state.dart';

class LoginScreenWidget extends StatelessWidget {  
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (stateContext) {
        return AuthProcessState(
          StoreProvider.of<AppState>(context),
          GetIt.instance.get<NetworkService>()
        );
      },
      child: Consumer<AuthProcessState>(
        builder: (context, value, child) => AuthNavigator()
      )
    );    
  }  
}