import 'package:flutter/material.dart';
import 'package:technical_assessment/core/routing/routes.dart';
import 'package:technical_assessment/features/home/screens/home_screen.dart';
import 'package:technical_assessment/features/profile/screens/profile_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute(builder: (context) =>  HomeScreen());

 case Routes.profile:
        return MaterialPageRoute(builder: (context) => const ProfileScreen());

      default:
        return null;
    }
  }
}