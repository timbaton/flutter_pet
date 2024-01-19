// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_navigator_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppNavigatorState {
  bool get authorized => throw _privateConstructorUsedError;
  bool get showOnboarding => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppNavigatorStateCopyWith<AppNavigatorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppNavigatorStateCopyWith<$Res> {
  factory $AppNavigatorStateCopyWith(
          AppNavigatorState value, $Res Function(AppNavigatorState) then) =
      _$AppNavigatorStateCopyWithImpl<$Res, AppNavigatorState>;
  @useResult
  $Res call({bool authorized, bool showOnboarding});
}

/// @nodoc
class _$AppNavigatorStateCopyWithImpl<$Res, $Val extends AppNavigatorState>
    implements $AppNavigatorStateCopyWith<$Res> {
  _$AppNavigatorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authorized = null,
    Object? showOnboarding = null,
  }) {
    return _then(_value.copyWith(
      authorized: null == authorized
          ? _value.authorized
          : authorized // ignore: cast_nullable_to_non_nullable
              as bool,
      showOnboarding: null == showOnboarding
          ? _value.showOnboarding
          : showOnboarding // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppNavigatorStateImplCopyWith<$Res>
    implements $AppNavigatorStateCopyWith<$Res> {
  factory _$$AppNavigatorStateImplCopyWith(_$AppNavigatorStateImpl value,
          $Res Function(_$AppNavigatorStateImpl) then) =
      __$$AppNavigatorStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool authorized, bool showOnboarding});
}

/// @nodoc
class __$$AppNavigatorStateImplCopyWithImpl<$Res>
    extends _$AppNavigatorStateCopyWithImpl<$Res, _$AppNavigatorStateImpl>
    implements _$$AppNavigatorStateImplCopyWith<$Res> {
  __$$AppNavigatorStateImplCopyWithImpl(_$AppNavigatorStateImpl _value,
      $Res Function(_$AppNavigatorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authorized = null,
    Object? showOnboarding = null,
  }) {
    return _then(_$AppNavigatorStateImpl(
      authorized: null == authorized
          ? _value.authorized
          : authorized // ignore: cast_nullable_to_non_nullable
              as bool,
      showOnboarding: null == showOnboarding
          ? _value.showOnboarding
          : showOnboarding // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AppNavigatorStateImpl implements _AppNavigatorState {
  _$AppNavigatorStateImpl(
      {required this.authorized, required this.showOnboarding});

  @override
  final bool authorized;
  @override
  final bool showOnboarding;

  @override
  String toString() {
    return 'AppNavigatorState(authorized: $authorized, showOnboarding: $showOnboarding)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppNavigatorStateImpl &&
            (identical(other.authorized, authorized) ||
                other.authorized == authorized) &&
            (identical(other.showOnboarding, showOnboarding) ||
                other.showOnboarding == showOnboarding));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authorized, showOnboarding);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppNavigatorStateImplCopyWith<_$AppNavigatorStateImpl> get copyWith =>
      __$$AppNavigatorStateImplCopyWithImpl<_$AppNavigatorStateImpl>(
          this, _$identity);
}

abstract class _AppNavigatorState implements AppNavigatorState {
  factory _AppNavigatorState(
      {required final bool authorized,
      required final bool showOnboarding}) = _$AppNavigatorStateImpl;

  @override
  bool get authorized;
  @override
  bool get showOnboarding;
  @override
  @JsonKey(ignore: true)
  _$$AppNavigatorStateImplCopyWith<_$AppNavigatorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
