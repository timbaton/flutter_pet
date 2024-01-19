import 'package:shared_preferences/shared_preferences.dart';

const _kShowOnboarding = "showOnboarding";

class ApplicationStorage {
  ApplicationStorage(SharedPreferences sharedPreferences)
      : _sharedPreferences = sharedPreferences;

  final SharedPreferences _sharedPreferences;

  bool get showOnboarding {
    return _sharedPreferences.getBool(_kShowOnboarding) ?? true;
  }

  set showOnboarding(bool value) {
    _sharedPreferences.setBool(_kShowOnboarding, value);
  }
}
