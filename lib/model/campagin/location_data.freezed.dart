// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'location_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LocationDataTearOff {
  const _$LocationDataTearOff();

  _LocationData call(String id, String name, List<ShortMissionData> missions) {
    return _LocationData(
      id,
      name,
      missions,
    );
  }
}

/// @nodoc
const $LocationData = _$LocationDataTearOff();

/// @nodoc
mixin _$LocationData {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<ShortMissionData> get missions => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationDataCopyWith<LocationData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationDataCopyWith<$Res> {
  factory $LocationDataCopyWith(
          LocationData value, $Res Function(LocationData) then) =
      _$LocationDataCopyWithImpl<$Res>;
  $Res call({String id, String name, List<ShortMissionData> missions});
}

/// @nodoc
class _$LocationDataCopyWithImpl<$Res> implements $LocationDataCopyWith<$Res> {
  _$LocationDataCopyWithImpl(this._value, this._then);

  final LocationData _value;
  // ignore: unused_field
  final $Res Function(LocationData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? missions = freezed,
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
      missions: missions == freezed
          ? _value.missions
          : missions // ignore: cast_nullable_to_non_nullable
              as List<ShortMissionData>,
    ));
  }
}

/// @nodoc
abstract class _$LocationDataCopyWith<$Res>
    implements $LocationDataCopyWith<$Res> {
  factory _$LocationDataCopyWith(
          _LocationData value, $Res Function(_LocationData) then) =
      __$LocationDataCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, List<ShortMissionData> missions});
}

/// @nodoc
class __$LocationDataCopyWithImpl<$Res> extends _$LocationDataCopyWithImpl<$Res>
    implements _$LocationDataCopyWith<$Res> {
  __$LocationDataCopyWithImpl(
      _LocationData _value, $Res Function(_LocationData) _then)
      : super(_value, (v) => _then(v as _LocationData));

  @override
  _LocationData get _value => super._value as _LocationData;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? missions = freezed,
  }) {
    return _then(_LocationData(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      missions == freezed
          ? _value.missions
          : missions // ignore: cast_nullable_to_non_nullable
              as List<ShortMissionData>,
    ));
  }
}

/// @nodoc

class _$_LocationData implements _LocationData {
  const _$_LocationData(this.id, this.name, this.missions);

  @override
  final String id;
  @override
  final String name;
  @override
  final List<ShortMissionData> missions;

  @override
  String toString() {
    return 'LocationData(id: $id, name: $name, missions: $missions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LocationData &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.missions, missions) ||
                const DeepCollectionEquality()
                    .equals(other.missions, missions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(missions);

  @JsonKey(ignore: true)
  @override
  _$LocationDataCopyWith<_LocationData> get copyWith =>
      __$LocationDataCopyWithImpl<_LocationData>(this, _$identity);
}

abstract class _LocationData implements LocationData {
  const factory _LocationData(
          String id, String name, List<ShortMissionData> missions) =
      _$_LocationData;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  List<ShortMissionData> get missions => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LocationDataCopyWith<_LocationData> get copyWith =>
      throw _privateConstructorUsedError;
}
