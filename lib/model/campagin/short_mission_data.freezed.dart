// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'short_mission_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ShortMissionDataTearOff {
  const _$ShortMissionDataTearOff();

  _ShortMissionStatus call(String id, String name, MissionStatus status) {
    return _ShortMissionStatus(
      id,
      name,
      status,
    );
  }
}

/// @nodoc
const $ShortMissionData = _$ShortMissionDataTearOff();

/// @nodoc
mixin _$ShortMissionData {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  MissionStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShortMissionDataCopyWith<ShortMissionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShortMissionDataCopyWith<$Res> {
  factory $ShortMissionDataCopyWith(
          ShortMissionData value, $Res Function(ShortMissionData) then) =
      _$ShortMissionDataCopyWithImpl<$Res>;
  $Res call({String id, String name, MissionStatus status});
}

/// @nodoc
class _$ShortMissionDataCopyWithImpl<$Res>
    implements $ShortMissionDataCopyWith<$Res> {
  _$ShortMissionDataCopyWithImpl(this._value, this._then);

  final ShortMissionData _value;
  // ignore: unused_field
  final $Res Function(ShortMissionData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MissionStatus,
    ));
  }
}

/// @nodoc
abstract class _$ShortMissionStatusCopyWith<$Res>
    implements $ShortMissionDataCopyWith<$Res> {
  factory _$ShortMissionStatusCopyWith(
          _ShortMissionStatus value, $Res Function(_ShortMissionStatus) then) =
      __$ShortMissionStatusCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, MissionStatus status});
}

/// @nodoc
class __$ShortMissionStatusCopyWithImpl<$Res>
    extends _$ShortMissionDataCopyWithImpl<$Res>
    implements _$ShortMissionStatusCopyWith<$Res> {
  __$ShortMissionStatusCopyWithImpl(
      _ShortMissionStatus _value, $Res Function(_ShortMissionStatus) _then)
      : super(_value, (v) => _then(v as _ShortMissionStatus));

  @override
  _ShortMissionStatus get _value => super._value as _ShortMissionStatus;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? status = freezed,
  }) {
    return _then(_ShortMissionStatus(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MissionStatus,
    ));
  }
}

/// @nodoc

class _$_ShortMissionStatus implements _ShortMissionStatus {
  const _$_ShortMissionStatus(this.id, this.name, this.status);

  @override
  final String id;
  @override
  final String name;
  @override
  final MissionStatus status;

  @override
  String toString() {
    return 'ShortMissionData(id: $id, name: $name, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShortMissionStatus &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  _$ShortMissionStatusCopyWith<_ShortMissionStatus> get copyWith =>
      __$ShortMissionStatusCopyWithImpl<_ShortMissionStatus>(this, _$identity);
}

abstract class _ShortMissionStatus implements ShortMissionData {
  const factory _ShortMissionStatus(
      String id, String name, MissionStatus status) = _$_ShortMissionStatus;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  MissionStatus get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ShortMissionStatusCopyWith<_ShortMissionStatus> get copyWith =>
      throw _privateConstructorUsedError;
}
