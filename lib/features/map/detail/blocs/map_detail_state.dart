import 'package:freezed_annotation/freezed_annotation.dart';

part 'map_detail_state.freezed.dart';

@freezed
class MapDetailState with _$MapDetailState {
  factory MapDetailState({required String description}) = _MapDetailState;

  factory MapDetailState.initial() => MapDetailState(
        description: "no description",
      );
}
