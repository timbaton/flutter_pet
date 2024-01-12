import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sealed_countries/sealed_countries.dart';

part 'map_state.freezed.dart';

@freezed
class MapState with _$MapState {
  factory MapState({
    required List<WorldCountry>? selected,
  }) = _MapState;

  factory MapState.initial() => MapState(
        selected: null,
      );
}
