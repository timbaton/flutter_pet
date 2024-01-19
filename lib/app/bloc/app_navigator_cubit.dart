import 'package:flutter_bloc/flutter_bloc.dart';

import '../service/app_service.dart';
import 'app_navigator_state.dart';

class AppNavigatorCubit extends Cubit<AppNavigatorState> {
  AppService _appService;

  AppNavigatorCubit(
    AppService appService,
  )   : _appService = appService,
        super(AppNavigatorState.initial()) {
    _updateState();
  }

  void _updateState() {
    emit(state.copyWith(
      showOnboarding: _appService.showOnboarding,
    ));
  }
}
