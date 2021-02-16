// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AppStateTearOff {
  const _$AppStateTearOff();

// ignore: unused_element
  _AppState call(AuthState authState, MissionState missionState) {
    return _AppState(
      authState,
      missionState,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AppState = _$AppStateTearOff();

/// @nodoc
mixin _$AppState {
  AuthState get authState;
  MissionState get missionState;

  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res>;
  $Res call({AuthState authState, MissionState missionState});

  $AuthStateCopyWith<$Res> get authState;
  $MissionStateCopyWith<$Res> get missionState;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;

  @override
  $Res call({
    Object authState = freezed,
    Object missionState = freezed,
  }) {
    return _then(_value.copyWith(
      authState:
          authState == freezed ? _value.authState : authState as AuthState,
      missionState: missionState == freezed
          ? _value.missionState
          : missionState as MissionState,
    ));
  }

  @override
  $AuthStateCopyWith<$Res> get authState {
    if (_value.authState == null) {
      return null;
    }
    return $AuthStateCopyWith<$Res>(_value.authState, (value) {
      return _then(_value.copyWith(authState: value));
    });
  }

  @override
  $MissionStateCopyWith<$Res> get missionState {
    if (_value.missionState == null) {
      return null;
    }
    return $MissionStateCopyWith<$Res>(_value.missionState, (value) {
      return _then(_value.copyWith(missionState: value));
    });
  }
}

/// @nodoc
abstract class _$AppStateCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$AppStateCopyWith(_AppState value, $Res Function(_AppState) then) =
      __$AppStateCopyWithImpl<$Res>;
  @override
  $Res call({AuthState authState, MissionState missionState});

  @override
  $AuthStateCopyWith<$Res> get authState;
  @override
  $MissionStateCopyWith<$Res> get missionState;
}

/// @nodoc
class __$AppStateCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$AppStateCopyWith<$Res> {
  __$AppStateCopyWithImpl(_AppState _value, $Res Function(_AppState) _then)
      : super(_value, (v) => _then(v as _AppState));

  @override
  _AppState get _value => super._value as _AppState;

  @override
  $Res call({
    Object authState = freezed,
    Object missionState = freezed,
  }) {
    return _then(_AppState(
      authState == freezed ? _value.authState : authState as AuthState,
      missionState == freezed
          ? _value.missionState
          : missionState as MissionState,
    ));
  }
}

/// @nodoc
class _$_AppState implements _AppState {
  const _$_AppState(this.authState, this.missionState)
      : assert(authState != null),
        assert(missionState != null);

  @override
  final AuthState authState;
  @override
  final MissionState missionState;

  @override
  String toString() {
    return 'AppState(authState: $authState, missionState: $missionState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppState &&
            (identical(other.authState, authState) ||
                const DeepCollectionEquality()
                    .equals(other.authState, authState)) &&
            (identical(other.missionState, missionState) ||
                const DeepCollectionEquality()
                    .equals(other.missionState, missionState)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(authState) ^
      const DeepCollectionEquality().hash(missionState);

  @JsonKey(ignore: true)
  @override
  _$AppStateCopyWith<_AppState> get copyWith =>
      __$AppStateCopyWithImpl<_AppState>(this, _$identity);
}

abstract class _AppState implements AppState {
  const factory _AppState(AuthState authState, MissionState missionState) =
      _$_AppState;

  @override
  AuthState get authState;
  @override
  MissionState get missionState;
  @override
  @JsonKey(ignore: true)
  _$AppStateCopyWith<_AppState> get copyWith;
}
