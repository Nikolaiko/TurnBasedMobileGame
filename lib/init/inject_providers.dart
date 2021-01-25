import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:turn_based_game/common/states/auth_state.dart';
import 'package:turn_based_game/init/initial_screen.dart';
import 'package:turn_based_game/network/user_repository.dart';

class InjectProviders extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthState>(          
          create: (context) => AuthState()
        ),
        Provider(
          create: (context) => UserRepository()
        )
      ],
      child: InitialScreenWidget()
    );
  }  
}
