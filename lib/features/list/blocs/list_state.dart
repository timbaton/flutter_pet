import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sealed_countries/sealed_countries.dart';

part 'list_state.freezed.dart';

@freezed
class ListState with _$ListState {
  factory ListState({
    required List<WorldCountry> selected,
  }) = _ListState;

  factory ListState.initial() => ListState(
        selected: List.empty(),
      );
}
