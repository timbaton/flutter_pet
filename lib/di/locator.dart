import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'application_storage.dart';

final locator = GetIt.instance;

registerAll() async {
  GetIt.instance.registerLazySingletonAsync<SharedPreferences>(
        () => SharedPreferences.getInstance(),
  );
  await GetIt.instance.isReady<SharedPreferences>(); // Add this line
  GetIt.instance.registerLazySingleton<ApplicationStorage>(
        () => ApplicationStorage(
      GetIt.instance<SharedPreferences>(),
    ),
  );
}
