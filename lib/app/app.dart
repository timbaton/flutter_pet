import 'package:flutter/material.dart';

import '../di/locator.dart';
import 'navigation/app_router_config.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await register();
  runApp(MyApp());
}

// Future<void> register() async {
//   GetIt.instance.registerLazySingletonAsync<SharedPreferences>(
//     () => SharedPreferences.getInstance(),
//   );
//   await GetIt.instance.isReady<SharedPreferences>(); // Add this line
//   GetIt.instance.registerLazySingleton<ApplicationStorage>(
//     () => ApplicationStorage(
//       GetIt.instance<SharedPreferences>(),
//     ),
//   );
// }

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final routerConfig = AppRouterConfig();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: routerConfig.config,
    );
  }
}
