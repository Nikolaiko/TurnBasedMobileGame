// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'unit_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UnitActionTearOff {
  const _$UnitActionTearOff();

// ignore: unused_element
  UnitEmptyAction empty() {
    return const UnitEmptyAction();
  }

// ignore: unused_element
  UnitMove move(
      Unit unit, int destRow, int destColumn, int startRow, int startColumn) {
    return UnitMove(
      unit,
      destRow,
      destColumn,
      startRow,
      startColumn,
    );
  }

// ignore: unused_element
  UnitAttack attack(Unit unit) {
    return UnitAttack(
      unit,
    );
  }

// ignore: unused_element
  UnitDie die(Unit unit) {
    return UnitDie(
      unit,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UnitAction = _$UnitActionTearOff();

/// @nodoc
mixin _$UnitAction {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult empty(),
    @required
        TResult move(Unit unit, int destRow, int destColumn, int startRow,
            int startColumn),
    @required TResult attack(Unit unit),
    @required TResult die(Unit unit),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult empty(),
    TResult move(
        Unit unit, int destRow, int destColumn, int startRow, int startColumn),
    TResult attack(Unit unit),
    TResult die(Unit unit),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult empty(UnitEmptyAction value),
    @required TResult move(UnitMove value),
    @required TResult attack(UnitAttack value),
    @required TResult die(UnitDie value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult empty(UnitEmptyAction value),
    TResult move(UnitMove value),
    TResult attack(UnitAttack value),
    TResult die(UnitDie value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $UnitActionCopyWith<$Res> {
  factory $UnitActionCopyWith(
          UnitAction value, $Res Function(UnitAction) then) =
      _$UnitActionCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnitActionCopyWithImpl<$Res> implements $UnitActionCopyWith<$Res> {
  _$UnitActionCopyWithImpl(this._value, this._then);

  final UnitAction _value;
  // ignore: unused_field
  final $Res Function(UnitAction) _then;
}

/// @nodoc
abstract class $UnitEmptyActionCopyWith<$Res> {
  factory $UnitEmptyActionCopyWith(
          UnitEmptyAction value, $Res Function(UnitEmptyAction) then) =
      _$UnitEmptyActionCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnitEmptyActionCopyWithImpl<$Res> extends _$UnitActionCopyWithImpl<$Res>
    implements $UnitEmptyActionCopyWith<$Res> {
  _$UnitEmptyActionCopyWithImpl(
      UnitEmptyAction _value, $Res Function(UnitEmptyAction) _then)
      : super(_value, (v) => _then(v as UnitEmptyAction));

  @override
  UnitEmptyAction get _value => super._value as UnitEmptyAction;
}

/// @nodoc
class _$UnitEmptyAction implements UnitEmptyAction {
  const _$UnitEmptyAction();

  @override
  String toString() {
    return 'UnitAction.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UnitEmptyAction);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult empty(),
    @required
        TResult move(Unit unit, int destRow, int destColumn, int startRow,
            int startColumn),
    @required TResult attack(Unit unit),
    @required TResult die(Unit unit),
  }) {
    assert(empty != null);
    assert(move != null);
    assert(attack != null);
    assert(die != null);
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult empty(),
    TResult move(
        Unit unit, int destRow, int destColumn, int startRow, int startColumn),
    TResult attack(Unit unit),
    TResult die(Unit unit),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult empty(UnitEmptyAction value),
    @required TResult move(UnitMove value),
    @required TResult attack(UnitAttack value),
    @required TResult die(UnitDie value),
  }) {
    assert(empty != null);
    assert(move != null);
    assert(attack != null);
    assert(die != null);
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult empty(UnitEmptyAction value),
    TResult move(UnitMove value),
    TResult attack(UnitAttack value),
    TResult die(UnitDie value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class UnitEmptyAction implements UnitAction {
  const factory UnitEmptyAction() = _$UnitEmptyAction;
}

/// @nodoc
abstract class $UnitMoveCopyWith<$Res> {
  factory $UnitMoveCopyWith(UnitMove value, $Res Function(UnitMove) then) =
      _$UnitMoveCopyWithImpl<$Res>;
  $Res call(
      {Unit unit, int destRow, int destColumn, int startRow, int startColumn});
}

/// @nodoc
class _$UnitMoveCopyWithImpl<$Res> extends _$UnitActionCopyWithImpl<$Res>
    implements $UnitMoveCopyWith<$Res> {
  _$UnitMoveCopyWithImpl(UnitMove _value, $Res Function(UnitMove) _then)
      : super(_value, (v) => _then(v as UnitMove));

  @override
  UnitMove get _value => super._value as UnitMove;

  @override
  $Res call({
    Object unit = freezed,
    Object destRow = freezed,
    Object destColumn = freezed,
    Object startRow = freezed,
    Object startColumn = freezed,
  }) {
    return _then(UnitMove(
      unit == freezed ? _value.unit : unit as Unit,
      destRow == freezed ? _value.destRow : destRow as int,
      destColumn == freezed ? _value.destColumn : destColumn as int,
      startRow == freezed ? _value.startRow : startRow as int,
      startColumn == freezed ? _value.startColumn : startColumn as int,
    ));
  }
}

/// @nodoc
class _$UnitMove implements UnitMove {
  const _$UnitMove(
      this.unit, this.destRow, this.destColumn, this.startRow, this.startColumn)
      : assert(unit != null),
        assert(destRow != null),
        assert(destColumn != null),
        assert(startRow != null),
        assert(startColumn != null);

  @override
  final Unit unit;
  @override
  final int destRow;
  @override
  final int destColumn;
  @override
  final int startRow;
  @override
  final int startColumn;

  @override
  String toString() {
    return 'UnitAction.move(unit: $unit, destRow: $destRow, destColumn: $destColumn, startRow: $startRow, startColumn: $startColumn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UnitMove &&
            (identical(other.unit, unit) ||
                const DeepCollectionEquality().equals(other.unit, unit)) &&
            (identical(other.destRow, destRow) ||
                const DeepCollectionEquality()
                    .equals(other.destRow, destRow)) &&
            (identical(other.destColumn, destColumn) ||
                const DeepCollectionEquality()
                    .equals(other.destColumn, destColumn)) &&
            (identical(other.startRow, startRow) ||
                const DeepCollectionEquality()
                    .equals(other.startRow, startRow)) &&
            (identical(other.startColumn, startColumn) ||
                const DeepCollectionEquality()
                    .equals(other.startColumn, startColumn)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(unit) ^
      const DeepCollectionEquality().hash(destRow) ^
      const DeepCollectionEquality().hash(destColumn) ^
      const DeepCollectionEquality().hash(startRow) ^
      const DeepCollectionEquality().hash(startColumn);

  @JsonKey(ignore: true)
  @override
  $UnitMoveCopyWith<UnitMove> get copyWith =>
      _$UnitMoveCopyWithImpl<UnitMove>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult empty(),
    @required
        TResult move(Unit unit, int destRow, int destColumn, int startRow,
            int startColumn),
    @required TResult attack(Unit unit),
    @required TResult die(Unit unit),
  }) {
    assert(empty != null);
    assert(move != null);
    assert(attack != null);
    assert(die != null);
    return move(unit, destRow, destColumn, startRow, startColumn);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult empty(),
    TResult move(
        Unit unit, int destRow, int destColumn, int startRow, int startColumn),
    TResult attack(Unit unit),
    TResult die(Unit unit),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (move != null) {
      return move(unit, destRow, destColumn, startRow, startColumn);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult empty(UnitEmptyAction value),
    @required TResult move(UnitMove value),
    @required TResult attack(UnitAttack value),
    @required TResult die(UnitDie value),
  }) {
    assert(empty != null);
    assert(move != null);
    assert(attack != null);
    assert(die != null);
    return move(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult empty(UnitEmptyAction value),
    TResult move(UnitMove value),
    TResult attack(UnitAttack value),
    TResult die(UnitDie value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (move != null) {
      return move(this);
    }
    return orElse();
  }
}

abstract class UnitMove implements UnitAction {
  const factory UnitMove(Unit unit, int destRow, int destColumn, int startRow,
      int startColumn) = _$UnitMove;

  Unit get unit;
  int get destRow;
  int get destColumn;
  int get startRow;
  int get startColumn;
  @JsonKey(ignore: true)
  $UnitMoveCopyWith<UnitMove> get copyWith;
}

/// @nodoc
abstract class $UnitAttackCopyWith<$Res> {
  factory $UnitAttackCopyWith(
          UnitAttack value, $Res Function(UnitAttack) then) =
      _$UnitAttackCopyWithImpl<$Res>;
  $Res call({Unit unit});
}

/// @nodoc
class _$UnitAttackCopyWithImpl<$Res> extends _$UnitActionCopyWithImpl<$Res>
    implements $UnitAttackCopyWith<$Res> {
  _$UnitAttackCopyWithImpl(UnitAttack _value, $Res Function(UnitAttack) _then)
      : super(_value, (v) => _then(v as UnitAttack));

  @override
  UnitAttack get _value => super._value as UnitAttack;

  @override
  $Res call({
    Object unit = freezed,
  }) {
    return _then(UnitAttack(
      unit == freezed ? _value.unit : unit as Unit,
    ));
  }
}

/// @nodoc
class _$UnitAttack implements UnitAttack {
  const _$UnitAttack(this.unit) : assert(unit != null);

  @override
  final Unit unit;

  @override
  String toString() {
    return 'UnitAction.attack(unit: $unit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UnitAttack &&
            (identical(other.unit, unit) ||
                const DeepCollectionEquality().equals(other.unit, unit)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(unit);

  @JsonKey(ignore: true)
  @override
  $UnitAttackCopyWith<UnitAttack> get copyWith =>
      _$UnitAttackCopyWithImpl<UnitAttack>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult empty(),
    @required
        TResult move(Unit unit, int destRow, int destColumn, int startRow,
            int startColumn),
    @required TResult attack(Unit unit),
    @required TResult die(Unit unit),
  }) {
    assert(empty != null);
    assert(move != null);
    assert(attack != null);
    assert(die != null);
    return attack(unit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult empty(),
    TResult move(
        Unit unit, int destRow, int destColumn, int startRow, int startColumn),
    TResult attack(Unit unit),
    TResult die(Unit unit),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (attack != null) {
      return attack(unit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult empty(UnitEmptyAction value),
    @required TResult move(UnitMove value),
    @required TResult attack(UnitAttack value),
    @required TResult die(UnitDie value),
  }) {
    assert(empty != null);
    assert(move != null);
    assert(attack != null);
    assert(die != null);
    return attack(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult empty(UnitEmptyAction value),
    TResult move(UnitMove value),
    TResult attack(UnitAttack value),
    TResult die(UnitDie value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (attack != null) {
      return attack(this);
    }
    return orElse();
  }
}

abstract class UnitAttack implements UnitAction {
  const factory UnitAttack(Unit unit) = _$UnitAttack;

  Unit get unit;
  @JsonKey(ignore: true)
  $UnitAttackCopyWith<UnitAttack> get copyWith;
}

/// @nodoc
abstract class $UnitDieCopyWith<$Res> {
  factory $UnitDieCopyWith(UnitDie value, $Res Function(UnitDie) then) =
      _$UnitDieCopyWithImpl<$Res>;
  $Res call({Unit unit});
}

/// @nodoc
class _$UnitDieCopyWithImpl<$Res> extends _$UnitActionCopyWithImpl<$Res>
    implements $UnitDieCopyWith<$Res> {
  _$UnitDieCopyWithImpl(UnitDie _value, $Res Function(UnitDie) _then)
      : super(_value, (v) => _then(v as UnitDie));

  @override
  UnitDie get _value => super._value as UnitDie;

  @override
  $Res call({
    Object unit = freezed,
  }) {
    return _then(UnitDie(
      unit == freezed ? _value.unit : unit as Unit,
    ));
  }
}

/// @nodoc
class _$UnitDie implements UnitDie {
  const _$UnitDie(this.unit) : assert(unit != null);

  @override
  final Unit unit;

  @override
  String toString() {
    return 'UnitAction.die(unit: $unit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UnitDie &&
            (identical(other.unit, unit) ||
                const DeepCollectionEquality().equals(other.unit, unit)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(unit);

  @JsonKey(ignore: true)
  @override
  $UnitDieCopyWith<UnitDie> get copyWith =>
      _$UnitDieCopyWithImpl<UnitDie>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult empty(),
    @required
        TResult move(Unit unit, int destRow, int destColumn, int startRow,
            int startColumn),
    @required TResult attack(Unit unit),
    @required TResult die(Unit unit),
  }) {
    assert(empty != null);
    assert(move != null);
    assert(attack != null);
    assert(die != null);
    return die(unit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult empty(),
    TResult move(
        Unit unit, int destRow, int destColumn, int startRow, int startColumn),
    TResult attack(Unit unit),
    TResult die(Unit unit),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (die != null) {
      return die(unit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult empty(UnitEmptyAction value),
    @required TResult move(UnitMove value),
    @required TResult attack(UnitAttack value),
    @required TResult die(UnitDie value),
  }) {
    assert(empty != null);
    assert(move != null);
    assert(attack != null);
    assert(die != null);
    return die(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult empty(UnitEmptyAction value),
    TResult move(UnitMove value),
    TResult attack(UnitAttack value),
    TResult die(UnitDie value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (die != null) {
      return die(this);
    }
    return orElse();
  }
}

abstract class UnitDie implements UnitAction {
  const factory UnitDie(Unit unit) = _$UnitDie;

  Unit get unit;
  @JsonKey(ignore: true)
  $UnitDieCopyWith<UnitDie> get copyWith;
}
