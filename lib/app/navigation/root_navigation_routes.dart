import 'package:flutter/material.dart';
import 'package:map/features/onboarding/onboarding_screen.dart';
import 'package:map/util/route_generator.dart';

import '../../features/home/main.dart';
import '../../util/navigator_keys.dart';

class RootRouteGenerator implements RouteGenerator {
  const RootRouteGenerator();

  @override
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RootNavigationKeys.onboarding:
        return MaterialPageRoute(
          builder: (ctx) => onboardingScreen(),
        );
      case RootNavigationKeys.main:
        return MaterialPageRoute(
          builder: (ctx) => main(),
        );
    }
    return null;
  }

  Widget onboardingScreen() {
    return const OnboardingScreen();
  }

  Widget main() {
    return const MyHomePage();
  }
}
