import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:map/features/common/map_storage.dart';
import 'package:sealed_countries/src/model/country/country.dart';

import 'list_state.dart';

class ListCubit extends Cubit<ListState> {
  final MapStorage _mapStorage;

  ListCubit({
    required MapStorage mapStorage,
  })  : _mapStorage = mapStorage,
        super(ListState.initial()) {
    List<String> selectedIds = _mapStorage.mapList;
    List<WorldCountry> allCountries = WorldCountry.list;

    List<WorldCountry> selected =
        allCountries.where((e) => selectedIds.contains(e.code)).toList();
    emit(state.copyWith(selected: selected));
  }

  signIn() async {}

  void onSelected(WorldCountry country) {
    final selectedNew = state.selected.toList();

    if (selectedNew.contains(country) == true) {
      selectedNew.remove(country);
    } else {
      selectedNew.add(country);
    }

    _mapStorage.mapList = selectedNew.map((e) => e.code).toList();
    emit(state.copyWith(selected: selectedNew));
  }
}
