import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:map/di/application_storage.dart';
import 'package:map/di/locator.dart';
import 'package:map/list/blocs/list_cubit.dart';
import 'package:map/map/blocs/map_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home/main.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  registerAll();

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
          // This is the theme of your application.
          //
          // TRY THIS: Try running your application with "flutter run". You'll see
          // the application has a purple toolbar. Then, without quitting the app,
          // try changing the seedColor in the colorScheme below to Colors.green
          // and then invoke "hot reload" (save your changes or press the "hot
          // reload" button in a Flutter-supported IDE, or press "r" if you used
          // the command line to start the app).
          //
          // Notice that the counter didn't reset back to zero; the application
          // state is not lost during the reload. To reset the state, use hot
          // restart instead.
          //
          // This works for code too, not just values: Most code changes can be
          // tested with just a hot reload.
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MyHomePage(),
      ),
    );
    // return ;
  }
}
