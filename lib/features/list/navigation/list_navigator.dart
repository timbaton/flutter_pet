import 'package:flutter/material.dart';
import 'package:map/util/navigator_keys.dart';
import 'package:map/util/route_generator.dart';

import 'list_navigation_routes.dart';

class ListNavigator extends StatelessWidget {
  final List<RouteGenerator> generators;

  ListNavigator({
    super.key,
  }) : generators = [
          const ListRouteGenerator(),
        ];

  @override
  Widget build(BuildContext context) {
    var key = NavigatorKeys.list;
    return Navigator(
      key: key,
      initialRoute: ListNavigationKeys.list,
      onGenerateRoute: _onGenerateRoute,
    );
  }

  Route? _onGenerateRoute(RouteSettings settings) {
    return onGenerateRoute(generators, settings);
  }
}
