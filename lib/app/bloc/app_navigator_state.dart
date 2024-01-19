import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_navigator_state.freezed.dart';

@freezed
class AppNavigatorState with _$AppNavigatorState {
  factory AppNavigatorState({
    required bool authorized,
    required bool showOnboarding,
  }) = _AppNavigatorState;

  factory AppNavigatorState.initial() => AppNavigatorState(
        authorized: false,
        showOnboarding: true,
      );
}
