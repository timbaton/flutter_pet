import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sealed_countries/src/model/country/country.dart';

import '../../di/application_storage.dart';
import 'list_state.dart';

class ListCubit extends Cubit<ListState> {
  final ApplicationStorage _applicationStorage;

  ListCubit({
    required ApplicationStorage applicationStorage,
  })  : _applicationStorage = applicationStorage,
        super(ListState.initial()) {
    List<String> selectedIds = _applicationStorage.mapList;
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

    _applicationStorage.mapList = selectedNew.map((e) => e.code).toList();
    emit(state.copyWith(selected: selectedNew));
  }
}
