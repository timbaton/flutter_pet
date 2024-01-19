import 'package:flutter/widgets.dart';

abstract class RouteGenerator {
  Route<dynamic>? onGenerateRoute(RouteSettings settings);
}

Route<dynamic>? onGenerateRoute(
  List<RouteGenerator> generators,
  RouteSettings settings,
) {
  for (final g in generators) {
    final route = g.onGenerateRoute(settings);
    if (route != null) {
      return route;
    }
  }
  return null;
}
