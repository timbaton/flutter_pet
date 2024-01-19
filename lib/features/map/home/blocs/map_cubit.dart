import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:map/features/common/map_storage.dart';
import 'package:sealed_countries/sealed_countries.dart';

import 'map_state.dart';

class MapCubit extends Cubit<MapState> {
  final MapStorage _mapStorage;
  final Function(String) onClicked;

  MapCubit({
    required this.onClicked,
    required MapStorage mapStorage,
  })  : _mapStorage = mapStorage,
        super(MapState.initial()) {
    update();
    // if (!_mapStorage.isUpdated.hasListener) {
    //   _mapStorage.isUpdated.stream.listen((isUpdated) {
    //     if (isUpdated) {
    //       update();
    //     }
    //   });
    // }
  }

  signIn() async {}

  void update() {
    List<String> selectedIds = _mapStorage.mapList;
    List<WorldCountry> allCountries = WorldCountry.list;

    List<WorldCountry> selected =
        allCountries.where((e) => selectedIds.contains(e.code)).toList();
    emit(state.copyWith(selected: selected));
  }

  void onCountryClicked(String description) {
    onClicked(description);
  }
}
