import 'package:flutter/cupertino.dart';
import 'package:map/util/navigator_keys.dart';
import 'package:map/util/route_generator.dart';

import 'map_navigation_routes.dart';

class MapNavigator extends StatelessWidget {
  final List<RouteGenerator> generators = [const MapRouteGenerator()];

  MapNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    var key = NavigatorKeys.map;
    return WillPopScope(
      onWillPop: () async {
        return !await NavigatorKeys.map.currentState!.maybePop();
      },
      child: Navigator(
        key: key,
        initialRoute: MapNavigationKeys.map,
        onGenerateRoute: _onGenerateRoute,
      ),
    );
  }

  Route? _onGenerateRoute(RouteSettings settings) {
    return onGenerateRoute(generators, settings);
  }
}
