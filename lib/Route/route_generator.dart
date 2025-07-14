import 'package:flutter/material.dart';
import 'package:myapp_threeinone/Counter%20App/counter.dart';
import 'package:myapp_threeinone/Flash%20Light%20App/flashlight.dart';
import 'package:myapp_threeinone/Flash%20Screen%20App/flashscreen.dart';
import 'package:myapp_threeinone/four_app.dart';
import 'route_name.dart';
import '../Basketball App/basketball_app.dart';
import '../onboarding_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.basketball:
        return MaterialPageRoute(builder: (context) => const BasketballApp());
      case RouteName.counter:
        return MaterialPageRoute(builder: (context) => const Counter());
      case RouteName.flashlight:
        return MaterialPageRoute(builder: (context) => const Flashlight());
      case RouteName.flashscreen:
        return MaterialPageRoute(builder: (context) => const FlashScreen());
      case RouteName.fourapp:
        return MaterialPageRoute(builder: (context) => const FourApp());
      case RouteName.onboarding:
        return MaterialPageRoute(
          builder: (context) => const OnboardingScreen(),
        );
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder:
          (context) =>
              const Scaffold(body: Center(child: Text('404 - Page Not Found'))),
    );
  }
}
