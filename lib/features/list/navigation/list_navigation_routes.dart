import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:map/di/locator.dart';
import 'package:map/features/common/map_storage.dart';
import 'package:map/features/list/ui/list_screen.dart';
import 'package:map/util/navigator_keys.dart';
import 'package:map/util/route_generator.dart';

import '../blocs/list_cubit.dart';

class ListRouteGenerator implements RouteGenerator {
  const ListRouteGenerator();

  @override
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case ListNavigationKeys.list:
        return MaterialPageRoute(
          builder: (ctx) => listScreen(),
        );
    }

    return null;
  }

  Widget listScreen() {
    return BlocProvider<ListCubit>(
      create: (BuildContext context) => ListCubit(
        mapStorage: locator.get<MapStorage>(),
      ),
      child: const ListScreen(),
    );
  }
}
