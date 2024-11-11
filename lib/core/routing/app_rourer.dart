import 'package:doctorna/core/routing/routes.dart';
import 'package:doctorna/features/login/ui/screen/login_screen.dart';
import 'package:doctorna/features/onboarding/ui/screen/onboarding_screen.dart';
import 'package:flutter/material.dart';

class AppRouter{
  Route generateRoute(RouteSettings settings){
    switch (settings.name){
      case Routes.onboardingScreen:
        return MaterialPageRoute(
          builder: (context) => const OnboardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}