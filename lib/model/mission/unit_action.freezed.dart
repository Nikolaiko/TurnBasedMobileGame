// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'unit_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UnitActionTearOff {
  const _$UnitActionTearOff();

  UnitEmptyAction empty() {
    return const UnitEmptyAction();
  }

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

  UnitAttack attack(Unit agressor, Unit victim, {bool mirroredVictim = false}) {
    return UnitAttack(
      agressor,
      victim,
      mirroredVictim: mirroredVictim,
    );
  }

  UnitDie die(Unit unit, {bool mirrored = false}) {
    return UnitDie(
      unit,
      mirrored: mirrored,
    );
  }
}

/// @nodoc
const $UnitAction = _$UnitActionTearOff();

/// @nodoc
mixin _$UnitAction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(Unit unit, int destRow, int destColumn,
            int startRow, int startColumn)
        move,
    required TResult Function(Unit agressor, Unit victim, bool mirroredVictim)
        attack,
    required TResult Function(Unit unit, bool mirrored) die,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(Unit unit, int destRow, int destColumn, int startRow,
            int startColumn)?
        move,
    TResult Function(Unit agressor, Unit victim, bool mirroredVictim)? attack,
    TResult Function(Unit unit, bool mirrored)? die,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnitEmptyAction value) empty,
    required TResult Function(UnitMove value) move,
    required TResult Function(UnitAttack value) attack,
    required TResult Function(UnitDie value) die,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnitEmptyAction value)? empty,
    TResult Function(UnitMove value)? move,
    TResult Function(UnitAttack value)? attack,
    TResult Function(UnitDie value)? die,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
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
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(Unit unit, int destRow, int destColumn,
            int startRow, int startColumn)
        move,
    required TResult Function(Unit agressor, Unit victim, bool mirroredVictim)
        attack,
    required TResult Function(Unit unit, bool mirrored) die,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(Unit unit, int destRow, int destColumn, int startRow,
            int startColumn)?
        move,
    TResult Function(Unit agressor, Unit victim, bool mirroredVictim)? attack,
    TResult Function(Unit unit, bool mirrored)? die,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnitEmptyAction value) empty,
    required TResult Function(UnitMove value) move,
    required TResult Function(UnitAttack value) attack,
    required TResult Function(UnitDie value) die,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnitEmptyAction value)? empty,
    TResult Function(UnitMove value)? move,
    TResult Function(UnitAttack value)? attack,
    TResult Function(UnitDie value)? die,
    required TResult orElse(),
  }) {
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
    Object? unit = freezed,
    Object? destRow = freezed,
    Object? destColumn = freezed,
    Object? startRow = freezed,
    Object? startColumn = freezed,
  }) {
    return _then(UnitMove(
      unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as Unit,
      destRow == freezed
          ? _value.destRow
          : destRow // ignore: cast_nullable_to_non_nullable
              as int,
      destColumn == freezed
          ? _value.destColumn
          : destColumn // ignore: cast_nullable_to_non_nullable
              as int,
      startRow == freezed
          ? _value.startRow
          : startRow // ignore: cast_nullable_to_non_nullable
              as int,
      startColumn == freezed
          ? _value.startColumn
          : startColumn // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UnitMove implements UnitMove {
  const _$UnitMove(this.unit, this.destRow, this.destColumn, this.startRow,
      this.startColumn);

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
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(Unit unit, int destRow, int destColumn,
            int startRow, int startColumn)
        move,
    required TResult Function(Unit agressor, Unit victim, bool mirroredVictim)
        attack,
    required TResult Function(Unit unit, bool mirrored) die,
  }) {
    return move(unit, destRow, destColumn, startRow, startColumn);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(Unit unit, int destRow, int destColumn, int startRow,
            int startColumn)?
        move,
    TResult Function(Unit agressor, Unit victim, bool mirroredVictim)? attack,
    TResult Function(Unit unit, bool mirrored)? die,
    required TResult orElse(),
  }) {
    if (move != null) {
      return move(unit, destRow, destColumn, startRow, startColumn);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnitEmptyAction value) empty,
    required TResult Function(UnitMove value) move,
    required TResult Function(UnitAttack value) attack,
    required TResult Function(UnitDie value) die,
  }) {
    return move(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnitEmptyAction value)? empty,
    TResult Function(UnitMove value)? move,
    TResult Function(UnitAttack value)? attack,
    TResult Function(UnitDie value)? die,
    required TResult orElse(),
  }) {
    if (move != null) {
      return move(this);
    }
    return orElse();
  }
}

abstract class UnitMove implements UnitAction {
  const factory UnitMove(Unit unit, int destRow, int destColumn, int startRow,
      int startColumn) = _$UnitMove;

  Unit get unit => throw _privateConstructorUsedError;
  int get destRow => throw _privateConstructorUsedError;
  int get destColumn => throw _privateConstructorUsedError;
  int get startRow => throw _privateConstructorUsedError;
  int get startColumn => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnitMoveCopyWith<UnitMove> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnitAttackCopyWith<$Res> {
  factory $UnitAttackCopyWith(
          UnitAttack value, $Res Function(UnitAttack) then) =
      _$UnitAttackCopyWithImpl<$Res>;
  $Res call({Unit agressor, Unit victim, bool mirroredVictim});
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
    Object? agressor = freezed,
    Object? victim = freezed,
    Object? mirroredVictim = freezed,
  }) {
    return _then(UnitAttack(
      agressor == freezed
          ? _value.agressor
          : agressor // ignore: cast_nullable_to_non_nullable
              as Unit,
      victim == freezed
          ? _value.victim
          : victim // ignore: cast_nullable_to_non_nullable
              as Unit,
      mirroredVictim: mirroredVictim == freezed
          ? _value.mirroredVictim
          : mirroredVictim // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UnitAttack implements UnitAttack {
  const _$UnitAttack(this.agressor, this.victim, {this.mirroredVictim = false});

  @override
  final Unit agressor;
  @override
  final Unit victim;
  @JsonKey(defaultValue: false)
  @override
  final bool mirroredVictim;

  @override
  String toString() {
    return 'UnitAction.attack(agressor: $agressor, victim: $victim, mirroredVictim: $mirroredVictim)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UnitAttack &&
            (identical(other.agressor, agressor) ||
                const DeepCollectionEquality()
                    .equals(other.agressor, agressor)) &&
            (identical(other.victim, victim) ||
                const DeepCollectionEquality().equals(other.victim, victim)) &&
            (identical(other.mirroredVictim, mirroredVictim) ||
                const DeepCollectionEquality()
                    .equals(other.mirroredVictim, mirroredVictim)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(agressor) ^
      const DeepCollectionEquality().hash(victim) ^
      const DeepCollectionEquality().hash(mirroredVictim);

  @JsonKey(ignore: true)
  @override
  $UnitAttackCopyWith<UnitAttack> get copyWith =>
      _$UnitAttackCopyWithImpl<UnitAttack>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(Unit unit, int destRow, int destColumn,
            int startRow, int startColumn)
        move,
    required TResult Function(Unit agressor, Unit victim, bool mirroredVictim)
        attack,
    required TResult Function(Unit unit, bool mirrored) die,
  }) {
    return attack(agressor, victim, mirroredVictim);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(Unit unit, int destRow, int destColumn, int startRow,
            int startColumn)?
        move,
    TResult Function(Unit agressor, Unit victim, bool mirroredVictim)? attack,
    TResult Function(Unit unit, bool mirrored)? die,
    required TResult orElse(),
  }) {
    if (attack != null) {
      return attack(agressor, victim, mirroredVictim);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnitEmptyAction value) empty,
    required TResult Function(UnitMove value) move,
    required TResult Function(UnitAttack value) attack,
    required TResult Function(UnitDie value) die,
  }) {
    return attack(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnitEmptyAction value)? empty,
    TResult Function(UnitMove value)? move,
    TResult Function(UnitAttack value)? attack,
    TResult Function(UnitDie value)? die,
    required TResult orElse(),
  }) {
    if (attack != null) {
      return attack(this);
    }
    return orElse();
  }
}

abstract class UnitAttack implements UnitAction {
  const factory UnitAttack(Unit agressor, Unit victim, {bool mirroredVictim}) =
      _$UnitAttack;

  Unit get agressor => throw _privateConstructorUsedError;
  Unit get victim => throw _privateConstructorUsedError;
  bool get mirroredVictim => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnitAttackCopyWith<UnitAttack> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnitDieCopyWith<$Res> {
  factory $UnitDieCopyWith(UnitDie value, $Res Function(UnitDie) then) =
      _$UnitDieCopyWithImpl<$Res>;
  $Res call({Unit unit, bool mirrored});
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
    Object? unit = freezed,
    Object? mirrored = freezed,
  }) {
    return _then(UnitDie(
      unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as Unit,
      mirrored: mirrored == freezed
          ? _value.mirrored
          : mirrored // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UnitDie implements UnitDie {
  const _$UnitDie(this.unit, {this.mirrored = false});

  @override
  final Unit unit;
  @JsonKey(defaultValue: false)
  @override
  final bool mirrored;

  @override
  String toString() {
    return 'UnitAction.die(unit: $unit, mirrored: $mirrored)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UnitDie &&
            (identical(other.unit, unit) ||
                const DeepCollectionEquality().equals(other.unit, unit)) &&
            (identical(other.mirrored, mirrored) ||
                const DeepCollectionEquality()
                    .equals(other.mirrored, mirrored)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(unit) ^
      const DeepCollectionEquality().hash(mirrored);

  @JsonKey(ignore: true)
  @override
  $UnitDieCopyWith<UnitDie> get copyWith =>
      _$UnitDieCopyWithImpl<UnitDie>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(Unit unit, int destRow, int destColumn,
            int startRow, int startColumn)
        move,
    required TResult Function(Unit agressor, Unit victim, bool mirroredVictim)
        attack,
    required TResult Function(Unit unit, bool mirrored) die,
  }) {
    return die(unit, mirrored);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(Unit unit, int destRow, int destColumn, int startRow,
            int startColumn)?
        move,
    TResult Function(Unit agressor, Unit victim, bool mirroredVictim)? attack,
    TResult Function(Unit unit, bool mirrored)? die,
    required TResult orElse(),
  }) {
    if (die != null) {
      return die(unit, mirrored);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnitEmptyAction value) empty,
    required TResult Function(UnitMove value) move,
    required TResult Function(UnitAttack value) attack,
    required TResult Function(UnitDie value) die,
  }) {
    return die(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnitEmptyAction value)? empty,
    TResult Function(UnitMove value)? move,
    TResult Function(UnitAttack value)? attack,
    TResult Function(UnitDie value)? die,
    required TResult orElse(),
  }) {
    if (die != null) {
      return die(this);
    }
    return orElse();
  }
}

abstract class UnitDie implements UnitAction {
  const factory UnitDie(Unit unit, {bool mirrored}) = _$UnitDie;

  Unit get unit => throw _privateConstructorUsedError;
  bool get mirrored => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnitDieCopyWith<UnitDie> get copyWith => throw _privateConstructorUsedError;
}
