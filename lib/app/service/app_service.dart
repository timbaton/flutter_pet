import '../storage/application_storage.dart';

class AppService {
  const AppService(ApplicationStorage storage) : _storage = storage;

  final ApplicationStorage _storage;

  bool get showOnboarding => _storage.showOnboarding;

  void markOnboardingShown() {
    _storage.showOnboarding = false;
  }
}
