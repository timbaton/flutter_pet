// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MapDetailState {
  String get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MapDetailStateCopyWith<MapDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapDetailStateCopyWith<$Res> {
  factory $MapDetailStateCopyWith(
          MapDetailState value, $Res Function(MapDetailState) then) =
      _$MapDetailStateCopyWithImpl<$Res, MapDetailState>;
  @useResult
  $Res call({String description});
}

/// @nodoc
class _$MapDetailStateCopyWithImpl<$Res, $Val extends MapDetailState>
    implements $MapDetailStateCopyWith<$Res> {
  _$MapDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MapDetailStateImplCopyWith<$Res>
    implements $MapDetailStateCopyWith<$Res> {
  factory _$$MapDetailStateImplCopyWith(_$MapDetailStateImpl value,
          $Res Function(_$MapDetailStateImpl) then) =
      __$$MapDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String description});
}

/// @nodoc
class __$$MapDetailStateImplCopyWithImpl<$Res>
    extends _$MapDetailStateCopyWithImpl<$Res, _$MapDetailStateImpl>
    implements _$$MapDetailStateImplCopyWith<$Res> {
  __$$MapDetailStateImplCopyWithImpl(
      _$MapDetailStateImpl _value, $Res Function(_$MapDetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
  }) {
    return _then(_$MapDetailStateImpl(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MapDetailStateImpl implements _MapDetailState {
  _$MapDetailStateImpl({required this.description});

  @override
  final String description;

  @override
  String toString() {
    return 'MapDetailState(description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapDetailStateImpl &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MapDetailStateImplCopyWith<_$MapDetailStateImpl> get copyWith =>
      __$$MapDetailStateImplCopyWithImpl<_$MapDetailStateImpl>(
          this, _$identity);
}

abstract class _MapDetailState implements MapDetailState {
  factory _MapDetailState({required final String description}) =
      _$MapDetailStateImpl;

  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$MapDetailStateImplCopyWith<_$MapDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
