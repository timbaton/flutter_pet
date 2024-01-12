import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sealed_countries/sealed_countries.dart';

import '../../di/application_storage.dart';
import 'map_state.dart';

class MapCubit extends Cubit<MapState> {
  final ApplicationStorage _applicationStorage;

  MapCubit({
    required ApplicationStorage applicationStorage,
  })  : _applicationStorage = applicationStorage,
        super(MapState.initial()) {
    List<String> selectedIds = _applicationStorage.mapList;
    List<WorldCountry> allCountries = WorldCountry.list;

    List<WorldCountry> selected =
    allCountries.where((e) => selectedIds.contains(e.code)).toList();
    emit(state.copyWith(selected: selected));
  }

  signIn() async {}
}
