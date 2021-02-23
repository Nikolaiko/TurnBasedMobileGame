import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

import '../network/network_service.dart';
import '../redux/app_state.dart';
import '../repositories/user_profile_repository.dart';
import 'state/auth_process_state.dart';
import 'widgets/auth_navigator.dart';

///Widget for preparing auth screens
class LoginScreenWidget extends StatelessWidget {  
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (stateContext) {
        return AuthProcessState(
          StoreProvider.of<AppState>(context),
          GetIt.instance.get<NetworkService>(),
          GetIt.instance.get<UserProfileRepository>()
        );
      },
      child: Consumer<AuthProcessState>(
        builder: (context, value, child) => AuthNavigator()
      )
    );    
  }  
}