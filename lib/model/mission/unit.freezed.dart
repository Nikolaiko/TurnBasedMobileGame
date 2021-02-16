// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'unit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UnitTearOff {
  const _$UnitTearOff();

// ignore: unused_element
  _Unit call(UnitType type, int row, int column, int health, int attack) {
    return _Unit(
      type,
      row,
      column,
      health,
      attack,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Unit = _$UnitTearOff();

/// @nodoc
mixin _$Unit {
  UnitType get type;
  int get row;
  int get column;
  int get health;
  int get attack;

  @JsonKey(ignore: true)
  $UnitCopyWith<Unit> get copyWith;
}

/// @nodoc
abstract class $UnitCopyWith<$Res> {
  factory $UnitCopyWith(Unit value, $Res Function(Unit) then) =
      _$UnitCopyWithImpl<$Res>;
  $Res call({UnitType type, int row, int column, int health, int attack});
}

/// @nodoc
class _$UnitCopyWithImpl<$Res> implements $UnitCopyWith<$Res> {
  _$UnitCopyWithImpl(this._value, this._then);

  final Unit _value;
  // ignore: unused_field
  final $Res Function(Unit) _then;

  @override
  $Res call({
    Object type = freezed,
    Object row = freezed,
    Object column = freezed,
    Object health = freezed,
    Object attack = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed ? _value.type : type as UnitType,
      row: row == freezed ? _value.row : row as int,
      column: column == freezed ? _value.column : column as int,
      health: health == freezed ? _value.health : health as int,
      attack: attack == freezed ? _value.attack : attack as int,
    ));
  }
}

/// @nodoc
abstract class _$UnitCopyWith<$Res> implements $UnitCopyWith<$Res> {
  factory _$UnitCopyWith(_Unit value, $Res Function(_Unit) then) =
      __$UnitCopyWithImpl<$Res>;
  @override
  $Res call({UnitType type, int row, int column, int health, int attack});
}

/// @nodoc
class __$UnitCopyWithImpl<$Res> extends _$UnitCopyWithImpl<$Res>
    implements _$UnitCopyWith<$Res> {
  __$UnitCopyWithImpl(_Unit _value, $Res Function(_Unit) _then)
      : super(_value, (v) => _then(v as _Unit));

  @override
  _Unit get _value => super._value as _Unit;

  @override
  $Res call({
    Object type = freezed,
    Object row = freezed,
    Object column = freezed,
    Object health = freezed,
    Object attack = freezed,
  }) {
    return _then(_Unit(
      type == freezed ? _value.type : type as UnitType,
      row == freezed ? _value.row : row as int,
      column == freezed ? _value.column : column as int,
      health == freezed ? _value.health : health as int,
      attack == freezed ? _value.attack : attack as int,
    ));
  }
}

/// @nodoc
class _$_Unit implements _Unit {
  const _$_Unit(this.type, this.row, this.column, this.health, this.attack)
      : assert(type != null),
        assert(row != null),
        assert(column != null),
        assert(health != null),
        assert(attack != null);

  @override
  final UnitType type;
  @override
  final int row;
  @override
  final int column;
  @override
  final int health;
  @override
  final int attack;

  @override
  String toString() {
    return 'Unit(type: $type, row: $row, column: $column, health: $health, attack: $attack)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Unit &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.row, row) ||
                const DeepCollectionEquality().equals(other.row, row)) &&
            (identical(other.column, column) ||
                const DeepCollectionEquality().equals(other.column, column)) &&
            (identical(other.health, health) ||
                const DeepCollectionEquality().equals(other.health, health)) &&
            (identical(other.attack, attack) ||
                const DeepCollectionEquality().equals(other.attack, attack)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(row) ^
      const DeepCollectionEquality().hash(column) ^
      const DeepCollectionEquality().hash(health) ^
      const DeepCollectionEquality().hash(attack);

  @JsonKey(ignore: true)
  @override
  _$UnitCopyWith<_Unit> get copyWith =>
      __$UnitCopyWithImpl<_Unit>(this, _$identity);
}

abstract class _Unit implements Unit {
  const factory _Unit(
      UnitType type, int row, int column, int health, int attack) = _$_Unit;

  @override
  UnitType get type;
  @override
  int get row;
  @override
  int get column;
  @override
  int get health;
  @override
  int get attack;
  @override
  @JsonKey(ignore: true)
  _$UnitCopyWith<_Unit> get copyWith;
}
