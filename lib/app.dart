import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:map/di/application_storage.dart';
import 'package:map/di/locator.dart';
import 'package:map/list/blocs/list_cubit.dart';
import 'package:map/map/blocs/map_cubit.dart';

import 'home/main.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await registerAll();
  // GetIt.instance.registerLazySingletonAsync<SharedPreferences>(
  //   () => SharedPreferences.getInstance(),
  // );
  // await GetIt.instance.isReady<SharedPreferences>(); // Add this line
  // GetIt.instance.registerLazySingleton<ApplicationStorage>(
  //   () => ApplicationStorage(
  //     GetIt.instance<SharedPreferences>(),
  //   ),
  // );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ListCubit>(
          create: (BuildContext context) => ListCubit(
            applicationStorage: locator.get<ApplicationStorage>(),
          ),
        ),
        BlocProvider<MapCubit>(
          create: (BuildContext context) => MapCubit(
            applicationStorage: locator.get<ApplicationStorage>(),
          ),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MyHomePage(),
      ),
    );
    // return ;
  }
}
