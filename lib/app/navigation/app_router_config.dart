import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:map/app/navigation/root_navigator.dart';

import '../../di/locator.dart';
import '../../util/navigator_keys.dart';
import '../bloc/app_navigator_cubit.dart';
import '../service/app_service.dart';

class AppRouterConfig {
  final config = GoRouter(
    navigatorKey: NavigatorKeys.app,
    initialLocation: "/",
    routes: [
      GoRoute(
        path: '/',
        pageBuilder: (context, state) {
          return MaterialPage(
            child: BlocProvider(
              create: (_) => AppNavigatorCubit(
                locator.get<AppService>(),
              ),
              child: const RootNavigator(),
            ),
          );
        },
      ),
    ],
  );
}
