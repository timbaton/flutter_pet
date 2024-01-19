import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:map/di/locator.dart';
import 'package:map/features/common/map_storage.dart';
import 'package:map/features/map/detail/blocs/map_detail_cubit.dart';
import 'package:map/features/map/detail/ui/map_detail_screen.dart';
import 'package:map/features/map/home/blocs/map_cubit.dart';
import 'package:map/features/map/home/ui/map_screen.dart';
import 'package:map/util/navigator_keys.dart';
import 'package:map/util/route_generator.dart';

class MapRouteGenerator implements RouteGenerator {
  const MapRouteGenerator();

  @override
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case MapNavigationKeys.map:
        return MaterialPageRoute(
          builder: (ctx) => mapScreen(),
        );

      case MapNavigationKeys.mapDetail:
        return MaterialPageRoute(
          builder: (ctx) => mapDescriptionScreen(
            description: settings.arguments as String,
          ),
        );
    }

    return null;
  }

  Widget mapScreen() {
    return BlocProvider<MapCubit>(
      create: (BuildContext context) => MapCubit(
        mapStorage: locator.get<MapStorage>(),
        // onClicked: (description) => {
        //   Navigator.of(ctx)
        //       .pushNamed(MapNavigationKeys.mapDetail)
        // },
        onClicked: (description) => {
          Navigator.of(context).pushNamed(
            MapNavigationKeys.mapDetail,
            arguments: description,
          )
        },
      ),
      child: const MapScreen(),
    );
  }

  Widget mapDescriptionScreen({
    required String description,
  }) {
    return BlocProvider(
      create: (ctx) => MapDetailCubit(
        description: description,
      ),
      child: MapDetailScreen(),
    );
  }
}
