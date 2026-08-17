import 'package:flutter/material.dart';
import 'package:fruits_hub/core/constants/strings.dart';
import 'package:fruits_hub/features/Auth/presentation/screens/login_screen.dart';
import 'package:fruits_hub/features/on_boarding/presentation/screens/on_boarding_screen.dart';
import 'package:fruits_hub/features/presentation/ui/screens/splash_screen.dart';

class AppRouter {
  Route? generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(builder: (c) => const SplashScreen());

      case onBoardingScreen:
        return MaterialPageRoute(builder: (c) => const OnBoardingScreen());
      case loginScreen:
        return MaterialPageRoute(builder: (c) => const LoginScreen());
    }
    return null;
  }
}