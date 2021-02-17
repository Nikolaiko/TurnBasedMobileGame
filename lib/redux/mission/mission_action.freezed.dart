// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'mission_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$MissionActionTearOff {
  const _$MissionActionTearOff();

// ignore: unused_element
  PrepareMissionAction prepareMission(
      List<List<int>> missionMap, List<Unit> missionUnits) {
    return PrepareMissionAction(
      missionMap,
      missionUnits,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MissionAction = _$MissionActionTearOff();

/// @nodoc
mixin _$MissionAction {
  List<List<int>> get missionMap;
  List<Unit> get missionUnits;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult prepareMission(
            List<List<int>> missionMap, List<Unit> missionUnits),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult prepareMission(List<List<int>> missionMap, List<Unit> missionUnits),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult prepareMission(PrepareMissionAction value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult prepareMission(PrepareMissionAction value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $MissionActionCopyWith<MissionAction> get copyWith;
}

/// @nodoc
abstract class $MissionActionCopyWith<$Res> {
  factory $MissionActionCopyWith(
          MissionAction value, $Res Function(MissionAction) then) =
      _$MissionActionCopyWithImpl<$Res>;
  $Res call({List<List<int>> missionMap, List<Unit> missionUnits});
}

/// @nodoc
class _$MissionActionCopyWithImpl<$Res>
    implements $MissionActionCopyWith<$Res> {
  _$MissionActionCopyWithImpl(this._value, this._then);

  final MissionAction _value;
  // ignore: unused_field
  final $Res Function(MissionAction) _then;

  @override
  $Res call({
    Object missionMap = freezed,
    Object missionUnits = freezed,
  }) {
    return _then(_value.copyWith(
      missionMap: missionMap == freezed
          ? _value.missionMap
          : missionMap as List<List<int>>,
      missionUnits: missionUnits == freezed
          ? _value.missionUnits
          : missionUnits as List<Unit>,
    ));
  }
}

/// @nodoc
abstract class $PrepareMissionActionCopyWith<$Res>
    implements $MissionActionCopyWith<$Res> {
  factory $PrepareMissionActionCopyWith(PrepareMissionAction value,
          $Res Function(PrepareMissionAction) then) =
      _$PrepareMissionActionCopyWithImpl<$Res>;
  @override
  $Res call({List<List<int>> missionMap, List<Unit> missionUnits});
}

/// @nodoc
class _$PrepareMissionActionCopyWithImpl<$Res>
    extends _$MissionActionCopyWithImpl<$Res>
    implements $PrepareMissionActionCopyWith<$Res> {
  _$PrepareMissionActionCopyWithImpl(
      PrepareMissionAction _value, $Res Function(PrepareMissionAction) _then)
      : super(_value, (v) => _then(v as PrepareMissionAction));

  @override
  PrepareMissionAction get _value => super._value as PrepareMissionAction;

  @override
  $Res call({
    Object missionMap = freezed,
    Object missionUnits = freezed,
  }) {
    return _then(PrepareMissionAction(
      missionMap == freezed ? _value.missionMap : missionMap as List<List<int>>,
      missionUnits == freezed
          ? _value.missionUnits
          : missionUnits as List<Unit>,
    ));
  }
}

/// @nodoc
class _$PrepareMissionAction implements PrepareMissionAction {
  const _$PrepareMissionAction(this.missionMap, this.missionUnits)
      : assert(missionMap != null),
        assert(missionUnits != null);

  @override
  final List<List<int>> missionMap;
  @override
  final List<Unit> missionUnits;

  @override
  String toString() {
    return 'MissionAction.prepareMission(missionMap: $missionMap, missionUnits: $missionUnits)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PrepareMissionAction &&
            (identical(other.missionMap, missionMap) ||
                const DeepCollectionEquality()
                    .equals(other.missionMap, missionMap)) &&
            (identical(other.missionUnits, missionUnits) ||
                const DeepCollectionEquality()
                    .equals(other.missionUnits, missionUnits)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(missionMap) ^
      const DeepCollectionEquality().hash(missionUnits);

  @JsonKey(ignore: true)
  @override
  $PrepareMissionActionCopyWith<PrepareMissionAction> get copyWith =>
      _$PrepareMissionActionCopyWithImpl<PrepareMissionAction>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult prepareMission(
            List<List<int>> missionMap, List<Unit> missionUnits),
  }) {
    assert(prepareMission != null);
    return prepareMission(missionMap, missionUnits);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult prepareMission(List<List<int>> missionMap, List<Unit> missionUnits),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (prepareMission != null) {
      return prepareMission(missionMap, missionUnits);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult prepareMission(PrepareMissionAction value),
  }) {
    assert(prepareMission != null);
    return prepareMission(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult prepareMission(PrepareMissionAction value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (prepareMission != null) {
      return prepareMission(this);
    }
    return orElse();
  }
}

abstract class PrepareMissionAction implements MissionAction {
  const factory PrepareMissionAction(
          List<List<int>> missionMap, List<Unit> missionUnits) =
      _$PrepareMissionAction;

  @override
  List<List<int>> get missionMap;
  @override
  List<Unit> get missionUnits;
  @override
  @JsonKey(ignore: true)
  $PrepareMissionActionCopyWith<PrepareMissionAction> get copyWith;
}
