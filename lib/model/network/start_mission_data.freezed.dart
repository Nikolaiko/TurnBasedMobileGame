// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'start_mission_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StartMissionData _$StartMissionDataFromJson(Map<String, dynamic> json) {
  return _StartMissionData.fromJson(json);
}

/// @nodoc
class _$StartMissionDataTearOff {
  const _$StartMissionDataTearOff();

  _StartMissionData call(List<UnitStartMissionData> enemyUnits,
      List<UnitStartMissionData> playerUnits, List<List<String>> tilemap) {
    return _StartMissionData(
      enemyUnits,
      playerUnits,
      tilemap,
    );
  }

  StartMissionData fromJson(Map<String, Object> json) {
    return StartMissionData.fromJson(json);
  }
}

/// @nodoc
const $StartMissionData = _$StartMissionDataTearOff();

/// @nodoc
mixin _$StartMissionData {
  List<UnitStartMissionData> get enemyUnits =>
      throw _privateConstructorUsedError;
  List<UnitStartMissionData> get playerUnits =>
      throw _privateConstructorUsedError;
  List<List<String>> get tilemap => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StartMissionDataCopyWith<StartMissionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartMissionDataCopyWith<$Res> {
  factory $StartMissionDataCopyWith(
          StartMissionData value, $Res Function(StartMissionData) then) =
      _$StartMissionDataCopyWithImpl<$Res>;
  $Res call(
      {List<UnitStartMissionData> enemyUnits,
      List<UnitStartMissionData> playerUnits,
      List<List<String>> tilemap});
}

/// @nodoc
class _$StartMissionDataCopyWithImpl<$Res>
    implements $StartMissionDataCopyWith<$Res> {
  _$StartMissionDataCopyWithImpl(this._value, this._then);

  final StartMissionData _value;
  // ignore: unused_field
  final $Res Function(StartMissionData) _then;

  @override
  $Res call({
    Object? enemyUnits = freezed,
    Object? playerUnits = freezed,
    Object? tilemap = freezed,
  }) {
    return _then(_value.copyWith(
      enemyUnits: enemyUnits == freezed
          ? _value.enemyUnits
          : enemyUnits // ignore: cast_nullable_to_non_nullable
              as List<UnitStartMissionData>,
      playerUnits: playerUnits == freezed
          ? _value.playerUnits
          : playerUnits // ignore: cast_nullable_to_non_nullable
              as List<UnitStartMissionData>,
      tilemap: tilemap == freezed
          ? _value.tilemap
          : tilemap // ignore: cast_nullable_to_non_nullable
              as List<List<String>>,
    ));
  }
}

/// @nodoc
abstract class _$StartMissionDataCopyWith<$Res>
    implements $StartMissionDataCopyWith<$Res> {
  factory _$StartMissionDataCopyWith(
          _StartMissionData value, $Res Function(_StartMissionData) then) =
      __$StartMissionDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<UnitStartMissionData> enemyUnits,
      List<UnitStartMissionData> playerUnits,
      List<List<String>> tilemap});
}

/// @nodoc
class __$StartMissionDataCopyWithImpl<$Res>
    extends _$StartMissionDataCopyWithImpl<$Res>
    implements _$StartMissionDataCopyWith<$Res> {
  __$StartMissionDataCopyWithImpl(
      _StartMissionData _value, $Res Function(_StartMissionData) _then)
      : super(_value, (v) => _then(v as _StartMissionData));

  @override
  _StartMissionData get _value => super._value as _StartMissionData;

  @override
  $Res call({
    Object? enemyUnits = freezed,
    Object? playerUnits = freezed,
    Object? tilemap = freezed,
  }) {
    return _then(_StartMissionData(
      enemyUnits == freezed
          ? _value.enemyUnits
          : enemyUnits // ignore: cast_nullable_to_non_nullable
              as List<UnitStartMissionData>,
      playerUnits == freezed
          ? _value.playerUnits
          : playerUnits // ignore: cast_nullable_to_non_nullable
              as List<UnitStartMissionData>,
      tilemap == freezed
          ? _value.tilemap
          : tilemap // ignore: cast_nullable_to_non_nullable
              as List<List<String>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StartMissionData implements _StartMissionData {
  const _$_StartMissionData(this.enemyUnits, this.playerUnits, this.tilemap);

  factory _$_StartMissionData.fromJson(Map<String, dynamic> json) =>
      _$_$_StartMissionDataFromJson(json);

  @override
  final List<UnitStartMissionData> enemyUnits;
  @override
  final List<UnitStartMissionData> playerUnits;
  @override
  final List<List<String>> tilemap;

  @override
  String toString() {
    return 'StartMissionData(enemyUnits: $enemyUnits, playerUnits: $playerUnits, tilemap: $tilemap)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StartMissionData &&
            (identical(other.enemyUnits, enemyUnits) ||
                const DeepCollectionEquality()
                    .equals(other.enemyUnits, enemyUnits)) &&
            (identical(other.playerUnits, playerUnits) ||
                const DeepCollectionEquality()
                    .equals(other.playerUnits, playerUnits)) &&
            (identical(other.tilemap, tilemap) ||
                const DeepCollectionEquality().equals(other.tilemap, tilemap)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(enemyUnits) ^
      const DeepCollectionEquality().hash(playerUnits) ^
      const DeepCollectionEquality().hash(tilemap);

  @JsonKey(ignore: true)
  @override
  _$StartMissionDataCopyWith<_StartMissionData> get copyWith =>
      __$StartMissionDataCopyWithImpl<_StartMissionData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_StartMissionDataToJson(this);
  }
}

abstract class _StartMissionData implements StartMissionData {
  const factory _StartMissionData(
      List<UnitStartMissionData> enemyUnits,
      List<UnitStartMissionData> playerUnits,
      List<List<String>> tilemap) = _$_StartMissionData;

  factory _StartMissionData.fromJson(Map<String, dynamic> json) =
      _$_StartMissionData.fromJson;

  @override
  List<UnitStartMissionData> get enemyUnits =>
      throw _privateConstructorUsedError;
  @override
  List<UnitStartMissionData> get playerUnits =>
      throw _privateConstructorUsedError;
  @override
  List<List<String>> get tilemap => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StartMissionDataCopyWith<_StartMissionData> get copyWith =>
      throw _privateConstructorUsedError;
}
