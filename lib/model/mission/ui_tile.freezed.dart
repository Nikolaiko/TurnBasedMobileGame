// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'ui_tile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UITileTearOff {
  const _$UITileTearOff();

// ignore: unused_element
  _UITile call(UITileType type, int row, int column) {
    return _UITile(
      type,
      row,
      column,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UITile = _$UITileTearOff();

/// @nodoc
mixin _$UITile {
  UITileType get type;
  int get row;
  int get column;

  @JsonKey(ignore: true)
  $UITileCopyWith<UITile> get copyWith;
}

/// @nodoc
abstract class $UITileCopyWith<$Res> {
  factory $UITileCopyWith(UITile value, $Res Function(UITile) then) =
      _$UITileCopyWithImpl<$Res>;
  $Res call({UITileType type, int row, int column});
}

/// @nodoc
class _$UITileCopyWithImpl<$Res> implements $UITileCopyWith<$Res> {
  _$UITileCopyWithImpl(this._value, this._then);

  final UITile _value;
  // ignore: unused_field
  final $Res Function(UITile) _then;

  @override
  $Res call({
    Object type = freezed,
    Object row = freezed,
    Object column = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed ? _value.type : type as UITileType,
      row: row == freezed ? _value.row : row as int,
      column: column == freezed ? _value.column : column as int,
    ));
  }
}

/// @nodoc
abstract class _$UITileCopyWith<$Res> implements $UITileCopyWith<$Res> {
  factory _$UITileCopyWith(_UITile value, $Res Function(_UITile) then) =
      __$UITileCopyWithImpl<$Res>;
  @override
  $Res call({UITileType type, int row, int column});
}

/// @nodoc
class __$UITileCopyWithImpl<$Res> extends _$UITileCopyWithImpl<$Res>
    implements _$UITileCopyWith<$Res> {
  __$UITileCopyWithImpl(_UITile _value, $Res Function(_UITile) _then)
      : super(_value, (v) => _then(v as _UITile));

  @override
  _UITile get _value => super._value as _UITile;

  @override
  $Res call({
    Object type = freezed,
    Object row = freezed,
    Object column = freezed,
  }) {
    return _then(_UITile(
      type == freezed ? _value.type : type as UITileType,
      row == freezed ? _value.row : row as int,
      column == freezed ? _value.column : column as int,
    ));
  }
}

/// @nodoc
class _$_UITile implements _UITile {
  const _$_UITile(this.type, this.row, this.column)
      : assert(type != null),
        assert(row != null),
        assert(column != null);

  @override
  final UITileType type;
  @override
  final int row;
  @override
  final int column;

  @override
  String toString() {
    return 'UITile(type: $type, row: $row, column: $column)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UITile &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.row, row) ||
                const DeepCollectionEquality().equals(other.row, row)) &&
            (identical(other.column, column) ||
                const DeepCollectionEquality().equals(other.column, column)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(row) ^
      const DeepCollectionEquality().hash(column);

  @JsonKey(ignore: true)
  @override
  _$UITileCopyWith<_UITile> get copyWith =>
      __$UITileCopyWithImpl<_UITile>(this, _$identity);
}

abstract class _UITile implements UITile {
  const factory _UITile(UITileType type, int row, int column) = _$_UITile;

  @override
  UITileType get type;
  @override
  int get row;
  @override
  int get column;
  @override
  @JsonKey(ignore: true)
  _$UITileCopyWith<_UITile> get copyWith;
}
