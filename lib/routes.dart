import 'package:flutter/material.dart';
import 'package:pixel_tech_assessment/presentation/screens/home_screen.dart';
import 'package:pixel_tech_assessment/presentation/screens/main_screen.dart';
import 'package:pixel_tech_assessment/presentation/screens/subscription_screen.dart';

class AppRoute {
  Route onGenerateRoute(RouteSettings routeArguments) {
    switch (routeArguments.name) {
      case '/':
        return MaterialPageRoute(
            builder: (context) => const SubscriptionScreen());
      case '/HomeScreen':
        return MaterialPageRoute(builder: (context) => const HomeScreen());

      case '/MainScreen':
        return MaterialPageRoute(builder: (context) => const MainScreen());

      default:
        return MaterialPageRoute(
            builder: (context) => const SubscriptionScreen());
    }
  }
}
