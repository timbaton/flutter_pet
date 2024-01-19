import 'package:get_it/get_it.dart';
import 'package:map/app/storage/application_storage.dart';
import 'package:map/features/common/map_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../app/service/app_service.dart';

final locator = GetIt.instance;

Future<void> register() async {
  // app storage
  GetIt.instance.registerLazySingletonAsync<SharedPreferences>(
    () => SharedPreferences.getInstance(),
  );

  await GetIt.instance.isReady<SharedPreferences>();

  var applicationStorage = ApplicationStorage(
    GetIt.instance<SharedPreferences>(),
  );
  final appService = AppService(
    applicationStorage,
  );
  GetIt.instance.registerLazySingleton<ApplicationStorage>(
    () {
      return applicationStorage;
    },
  );

  // map storage
  var mapStorage = MapStorage(
    GetIt.instance<SharedPreferences>(),
  );
  GetIt.instance.registerLazySingleton<MapStorage>(
    () {
      return mapStorage;
    },
  );

  // services
  GetIt.instance.registerLazySingleton<AppService>(
    () {
      return appService;
    },
  );
}
