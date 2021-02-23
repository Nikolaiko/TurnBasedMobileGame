import 'package:flutter/material.dart';

import '../../service_screens/unknown_route_screen.dart';
import '../consts/auth_process_routes.dart';
import 'login_form_widget.dart';
import 'register_form_widget.dart';

///Navigator for login screens
class AuthNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: loginRoute,
      onGenerateInitialRoutes: _buildStartScreenRoute,
      onGenerateRoute: _buildRoute,
    );
  }
  
  List<MaterialPageRoute> _buildStartScreenRoute(
    NavigatorState navigator, 
    String initialRoute) 
  {
    return [
      MaterialPageRoute<dynamic>(
          settings: RouteSettings(name: initialRoute),
          builder: (context) {
            return LoginFormWidget();
          }
      )
    ];
  }

  Route _buildRoute(RouteSettings settings) {
    Route route;
    switch(settings.name) {
      case loginRoute:
        route = PageRouteBuilder<dynamic>(
            settings: settings,
            pageBuilder: (context, animation, secondaryAnimation) =>
                LoginFormWidget(),
            transitionsBuilder: _buildTransition
        );
        break;
      case registerRoute:
        route = PageRouteBuilder<dynamic>(
            settings: settings,
            pageBuilder: (context, animation, secondaryAnimation) =>
                RegisterFormWidget(),
            transitionsBuilder: _buildTransition
        );
        break;
      default:
        route = PageRouteBuilder<dynamic>(
            settings: settings,
            pageBuilder: (context, animation, secondaryAnimation) =>
                UknownRouteScreen(),
            transitionsBuilder: _buildTransition
        );
        break;
    }
    return route;
  }

  Widget _buildTransition(
    BuildContext context, 
    Animation animation, 
    Animation secondaryAnimation,
     Widget child
  ) {
    var begin = const Offset(1.0, 0.0);
    var end = Offset.zero;
    var tween = Tween(begin: begin, end: end);
    var offsetAnimation = animation.drive(tween);

    return SlideTransition(
        position: offsetAnimation,
        child: child
    );
  }
}