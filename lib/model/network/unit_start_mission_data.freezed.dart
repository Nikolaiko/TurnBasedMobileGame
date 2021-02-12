// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'unit_start_mission_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UnitStartMissionData _$UnitStartMissionDataFromJson(Map<String, dynamic> json) {
  return _UnitStartMissionData.fromJson(json);
}

/// @nodoc
class _$UnitStartMissionDataTearOff {
  const _$UnitStartMissionDataTearOff();

// ignore: unused_element
  _UnitStartMissionData call(String type, int x, int y) {
    return _UnitStartMissionData(
      type,
      x,
      y,
    );
  }

// ignore: unused_element
  UnitStartMissionData fromJson(Map<String, Object> json) {
    return UnitStartMissionData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $UnitStartMissionData = _$UnitStartMissionDataTearOff();

/// @nodoc
mixin _$UnitStartMissionData {
  String get type;
  int get x;
  int get y;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $UnitStartMissionDataCopyWith<UnitStartMissionData> get copyWith;
}

/// @nodoc
abstract class $UnitStartMissionDataCopyWith<$Res> {
  factory $UnitStartMissionDataCopyWith(UnitStartMissionData value,
          $Res Function(UnitStartMissionData) then) =
      _$UnitStartMissionDataCopyWithImpl<$Res>;
  $Res call({String type, int x, int y});
}

/// @nodoc
class _$UnitStartMissionDataCopyWithImpl<$Res>
    implements $UnitStartMissionDataCopyWith<$Res> {
  _$UnitStartMissionDataCopyWithImpl(this._value, this._then);

  final UnitStartMissionData _value;
  // ignore: unused_field
  final $Res Function(UnitStartMissionData) _then;

  @override
  $Res call({
    Object type = freezed,
    Object x = freezed,
    Object y = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed ? _value.type : type as String,
      x: x == freezed ? _value.x : x as int,
      y: y == freezed ? _value.y : y as int,
    ));
  }
}

/// @nodoc
abstract class _$UnitStartMissionDataCopyWith<$Res>
    implements $UnitStartMissionDataCopyWith<$Res> {
  factory _$UnitStartMissionDataCopyWith(_UnitStartMissionData value,
          $Res Function(_UnitStartMissionData) then) =
      __$UnitStartMissionDataCopyWithImpl<$Res>;
  @override
  $Res call({String type, int x, int y});
}

/// @nodoc
class __$UnitStartMissionDataCopyWithImpl<$Res>
    extends _$UnitStartMissionDataCopyWithImpl<$Res>
    implements _$UnitStartMissionDataCopyWith<$Res> {
  __$UnitStartMissionDataCopyWithImpl(
      _UnitStartMissionData _value, $Res Function(_UnitStartMissionData) _then)
      : super(_value, (v) => _then(v as _UnitStartMissionData));

  @override
  _UnitStartMissionData get _value => super._value as _UnitStartMissionData;

  @override
  $Res call({
    Object type = freezed,
    Object x = freezed,
    Object y = freezed,
  }) {
    return _then(_UnitStartMissionData(
      type == freezed ? _value.type : type as String,
      x == freezed ? _value.x : x as int,
      y == freezed ? _value.y : y as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_UnitStartMissionData implements _UnitStartMissionData {
  const _$_UnitStartMissionData(this.type, this.x, this.y)
      : assert(type != null),
        assert(x != null),
        assert(y != null);

  factory _$_UnitStartMissionData.fromJson(Map<String, dynamic> json) =>
      _$_$_UnitStartMissionDataFromJson(json);

  @override
  final String type;
  @override
  final int x;
  @override
  final int y;

  @override
  String toString() {
    return 'UnitStartMissionData(type: $type, x: $x, y: $y)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UnitStartMissionData &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.x, x) ||
                const DeepCollectionEquality().equals(other.x, x)) &&
            (identical(other.y, y) ||
                const DeepCollectionEquality().equals(other.y, y)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(x) ^
      const DeepCollectionEquality().hash(y);

  @JsonKey(ignore: true)
  @override
  _$UnitStartMissionDataCopyWith<_UnitStartMissionData> get copyWith =>
      __$UnitStartMissionDataCopyWithImpl<_UnitStartMissionData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UnitStartMissionDataToJson(this);
  }
}

abstract class _UnitStartMissionData implements UnitStartMissionData {
  const factory _UnitStartMissionData(String type, int x, int y) =
      _$_UnitStartMissionData;

  factory _UnitStartMissionData.fromJson(Map<String, dynamic> json) =
      _$_UnitStartMissionData.fromJson;

  @override
  String get type;
  @override
  int get x;
  @override
  int get y;
  @override
  @JsonKey(ignore: true)
  _$UnitStartMissionDataCopyWith<_UnitStartMissionData> get copyWith;
}
