// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'mission_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MissionStateTearOff {
  const _$MissionStateTearOff();

  _MissionState call(List<List<int>> missionMap, List<Unit> missionUnits) {
    return _MissionState(
      missionMap,
      missionUnits,
    );
  }

  MissionNotStarted notStarted() {
    return const MissionNotStarted();
  }
}

/// @nodoc
const $MissionState = _$MissionStateTearOff();

/// @nodoc
mixin _$MissionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<List<int>> missionMap, List<Unit> missionUnits)
        $default, {
    required TResult Function() notStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<List<int>> missionMap, List<Unit> missionUnits)?
        $default, {
    TResult Function()? notStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_MissionState value) $default, {
    required TResult Function(MissionNotStarted value) notStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MissionState value)? $default, {
    TResult Function(MissionNotStarted value)? notStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MissionStateCopyWith<$Res> {
  factory $MissionStateCopyWith(
          MissionState value, $Res Function(MissionState) then) =
      _$MissionStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MissionStateCopyWithImpl<$Res> implements $MissionStateCopyWith<$Res> {
  _$MissionStateCopyWithImpl(this._value, this._then);

  final MissionState _value;
  // ignore: unused_field
  final $Res Function(MissionState) _then;
}

/// @nodoc
abstract class _$MissionStateCopyWith<$Res> {
  factory _$MissionStateCopyWith(
          _MissionState value, $Res Function(_MissionState) then) =
      __$MissionStateCopyWithImpl<$Res>;
  $Res call({List<List<int>> missionMap, List<Unit> missionUnits});
}

/// @nodoc
class __$MissionStateCopyWithImpl<$Res> extends _$MissionStateCopyWithImpl<$Res>
    implements _$MissionStateCopyWith<$Res> {
  __$MissionStateCopyWithImpl(
      _MissionState _value, $Res Function(_MissionState) _then)
      : super(_value, (v) => _then(v as _MissionState));

  @override
  _MissionState get _value => super._value as _MissionState;

  @override
  $Res call({
    Object? missionMap = freezed,
    Object? missionUnits = freezed,
  }) {
    return _then(_MissionState(
      missionMap == freezed
          ? _value.missionMap
          : missionMap // ignore: cast_nullable_to_non_nullable
              as List<List<int>>,
      missionUnits == freezed
          ? _value.missionUnits
          : missionUnits // ignore: cast_nullable_to_non_nullable
              as List<Unit>,
    ));
  }
}

/// @nodoc

class _$_MissionState implements _MissionState {
  const _$_MissionState(this.missionMap, this.missionUnits);

  @override
  final List<List<int>> missionMap;
  @override
  final List<Unit> missionUnits;

  @override
  String toString() {
    return 'MissionState(missionMap: $missionMap, missionUnits: $missionUnits)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MissionState &&
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
  _$MissionStateCopyWith<_MissionState> get copyWith =>
      __$MissionStateCopyWithImpl<_MissionState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<List<int>> missionMap, List<Unit> missionUnits)
        $default, {
    required TResult Function() notStarted,
  }) {
    return $default(missionMap, missionUnits);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<List<int>> missionMap, List<Unit> missionUnits)?
        $default, {
    TResult Function()? notStarted,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(missionMap, missionUnits);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_MissionState value) $default, {
    required TResult Function(MissionNotStarted value) notStarted,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MissionState value)? $default, {
    TResult Function(MissionNotStarted value)? notStarted,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _MissionState implements MissionState {
  const factory _MissionState(
      List<List<int>> missionMap, List<Unit> missionUnits) = _$_MissionState;

  List<List<int>> get missionMap => throw _privateConstructorUsedError;
  List<Unit> get missionUnits => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$MissionStateCopyWith<_MissionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MissionNotStartedCopyWith<$Res> {
  factory $MissionNotStartedCopyWith(
          MissionNotStarted value, $Res Function(MissionNotStarted) then) =
      _$MissionNotStartedCopyWithImpl<$Res>;
}

/// @nodoc
class _$MissionNotStartedCopyWithImpl<$Res>
    extends _$MissionStateCopyWithImpl<$Res>
    implements $MissionNotStartedCopyWith<$Res> {
  _$MissionNotStartedCopyWithImpl(
      MissionNotStarted _value, $Res Function(MissionNotStarted) _then)
      : super(_value, (v) => _then(v as MissionNotStarted));

  @override
  MissionNotStarted get _value => super._value as MissionNotStarted;
}

/// @nodoc

class _$MissionNotStarted implements MissionNotStarted {
  const _$MissionNotStarted();

  @override
  String toString() {
    return 'MissionState.notStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MissionNotStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<List<int>> missionMap, List<Unit> missionUnits)
        $default, {
    required TResult Function() notStarted,
  }) {
    return notStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<List<int>> missionMap, List<Unit> missionUnits)?
        $default, {
    TResult Function()? notStarted,
    required TResult orElse(),
  }) {
    if (notStarted != null) {
      return notStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_MissionState value) $default, {
    required TResult Function(MissionNotStarted value) notStarted,
  }) {
    return notStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MissionState value)? $default, {
    TResult Function(MissionNotStarted value)? notStarted,
    required TResult orElse(),
  }) {
    if (notStarted != null) {
      return notStarted(this);
    }
    return orElse();
  }
}

abstract class MissionNotStarted implements MissionState {
  const factory MissionNotStarted() = _$MissionNotStarted;
}
