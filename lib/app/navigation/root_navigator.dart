import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:map/app/navigation/root_navigation_routes.dart';
import 'package:map/util/route_generator.dart';

import '../../util/navigator_keys.dart';
import '../bloc/app_navigator_cubit.dart';
import '../bloc/app_navigator_state.dart';

class RootNavigator extends StatelessWidget {
  final generators = const [
    RootRouteGenerator(),
  ];

  const RootNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppNavigatorCubit, AppNavigatorState>(
      builder: (context, state) {
        return Navigator(
          key: NavigatorKeys.root,
          initialRoute: _initialRoute(state),
          onGenerateRoute: _onGenerateRoute,
        );
      },
    );
  }

  String _initialRoute(AppNavigatorState state) {
    if (state.showOnboarding) {
      return RootNavigationKeys.onboarding;
    }
    return RootNavigationKeys.main;
  }

  Route? _onGenerateRoute(RouteSettings settings) {
    return onGenerateRoute(generators, settings);
  }
}
