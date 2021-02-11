import 'package:flutter/material.dart';
import 'package:turn_based_game/auth_process/consts/auth_process_routes.dart';
import 'package:turn_based_game/auth_process/widgets/login_form_widget.dart';
import 'package:turn_based_game/auth_process/widgets/register_form_widget.dart';
import 'package:turn_based_game/service_screens/unknown_route_screen.dart';

class AuthNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: LOGIN_ROUTE,
      onGenerateInitialRoutes: _buildStartScreenRoute,
      onGenerateRoute: _buildRoute,
    );
  }

  List<MaterialPageRoute> _buildStartScreenRoute(NavigatorState navigator, String initialRoute) {
    return [
      MaterialPageRoute(
          settings: RouteSettings(name: initialRoute),
          builder: (BuildContext context) {
            return LoginFormWidget();
          }
      )
    ];
  }

  Route _buildRoute(RouteSettings settings) {
    Route route;
    switch(settings.name) {
      case LOGIN_ROUTE:
        route = PageRouteBuilder(
            settings: settings,
            pageBuilder: (context, animation, secondaryAnimation) =>
                LoginFormWidget(),
            transitionsBuilder: _buildTransition
        );
        break;
      case REGISTER_ROUTE:
        route = PageRouteBuilder(
            settings: settings,
            pageBuilder: (context, animation, secondaryAnimation) =>
                RegisterFormWidget(),
            transitionsBuilder: _buildTransition
        );
        break;
      default:
        route = PageRouteBuilder(
            settings: settings,
            pageBuilder: (context, animation, secondaryAnimation) =>
                UknownRouteScreen(),
            transitionsBuilder: _buildTransition
        );
        break;
    }
    return route;
  }

  Widget _buildTransition(BuildContext context, Animation animation, Animation secondaryAnimation, Widget child) {
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