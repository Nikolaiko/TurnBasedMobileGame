// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthViewModelTearOff {
  const _$AuthViewModelTearOff();

// ignore: unused_element
  InitAuthState init() {
    return const InitAuthState();
  }

// ignore: unused_element
  LoggedAuthState logged() {
    return const LoggedAuthState();
  }

// ignore: unused_element
  NotLoggedAuthState notLogged() {
    return const NotLoggedAuthState();
  }
}

/// @nodoc
// ignore: unused_element
const $AuthViewModel = _$AuthViewModelTearOff();

/// @nodoc
mixin _$AuthViewModel {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult init(),
    @required TResult logged(),
    @required TResult notLogged(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult init(),
    TResult logged(),
    TResult notLogged(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult init(InitAuthState value),
    @required TResult logged(LoggedAuthState value),
    @required TResult notLogged(NotLoggedAuthState value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult init(InitAuthState value),
    TResult logged(LoggedAuthState value),
    TResult notLogged(NotLoggedAuthState value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AuthViewModelCopyWith<$Res> {
  factory $AuthViewModelCopyWith(
          AuthViewModel value, $Res Function(AuthViewModel) then) =
      _$AuthViewModelCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthViewModelCopyWithImpl<$Res>
    implements $AuthViewModelCopyWith<$Res> {
  _$AuthViewModelCopyWithImpl(this._value, this._then);

  final AuthViewModel _value;
  // ignore: unused_field
  final $Res Function(AuthViewModel) _then;
}

/// @nodoc
abstract class $InitAuthStateCopyWith<$Res> {
  factory $InitAuthStateCopyWith(
          InitAuthState value, $Res Function(InitAuthState) then) =
      _$InitAuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitAuthStateCopyWithImpl<$Res>
    extends _$AuthViewModelCopyWithImpl<$Res>
    implements $InitAuthStateCopyWith<$Res> {
  _$InitAuthStateCopyWithImpl(
      InitAuthState _value, $Res Function(InitAuthState) _then)
      : super(_value, (v) => _then(v as InitAuthState));

  @override
  InitAuthState get _value => super._value as InitAuthState;
}

/// @nodoc
class _$InitAuthState implements InitAuthState {
  const _$InitAuthState();

  @override
  String toString() {
    return 'AuthViewModel.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitAuthState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult init(),
    @required TResult logged(),
    @required TResult notLogged(),
  }) {
    assert(init != null);
    assert(logged != null);
    assert(notLogged != null);
    return init();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult init(),
    TResult logged(),
    TResult notLogged(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult init(InitAuthState value),
    @required TResult logged(LoggedAuthState value),
    @required TResult notLogged(NotLoggedAuthState value),
  }) {
    assert(init != null);
    assert(logged != null);
    assert(notLogged != null);
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult init(InitAuthState value),
    TResult logged(LoggedAuthState value),
    TResult notLogged(NotLoggedAuthState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitAuthState implements AuthViewModel {
  const factory InitAuthState() = _$InitAuthState;
}

/// @nodoc
abstract class $LoggedAuthStateCopyWith<$Res> {
  factory $LoggedAuthStateCopyWith(
          LoggedAuthState value, $Res Function(LoggedAuthState) then) =
      _$LoggedAuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoggedAuthStateCopyWithImpl<$Res>
    extends _$AuthViewModelCopyWithImpl<$Res>
    implements $LoggedAuthStateCopyWith<$Res> {
  _$LoggedAuthStateCopyWithImpl(
      LoggedAuthState _value, $Res Function(LoggedAuthState) _then)
      : super(_value, (v) => _then(v as LoggedAuthState));

  @override
  LoggedAuthState get _value => super._value as LoggedAuthState;
}

/// @nodoc
class _$LoggedAuthState implements LoggedAuthState {
  const _$LoggedAuthState();

  @override
  String toString() {
    return 'AuthViewModel.logged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoggedAuthState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult init(),
    @required TResult logged(),
    @required TResult notLogged(),
  }) {
    assert(init != null);
    assert(logged != null);
    assert(notLogged != null);
    return logged();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult init(),
    TResult logged(),
    TResult notLogged(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (logged != null) {
      return logged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult init(InitAuthState value),
    @required TResult logged(LoggedAuthState value),
    @required TResult notLogged(NotLoggedAuthState value),
  }) {
    assert(init != null);
    assert(logged != null);
    assert(notLogged != null);
    return logged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult init(InitAuthState value),
    TResult logged(LoggedAuthState value),
    TResult notLogged(NotLoggedAuthState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (logged != null) {
      return logged(this);
    }
    return orElse();
  }
}

abstract class LoggedAuthState implements AuthViewModel {
  const factory LoggedAuthState() = _$LoggedAuthState;
}

/// @nodoc
abstract class $NotLoggedAuthStateCopyWith<$Res> {
  factory $NotLoggedAuthStateCopyWith(
          NotLoggedAuthState value, $Res Function(NotLoggedAuthState) then) =
      _$NotLoggedAuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotLoggedAuthStateCopyWithImpl<$Res>
    extends _$AuthViewModelCopyWithImpl<$Res>
    implements $NotLoggedAuthStateCopyWith<$Res> {
  _$NotLoggedAuthStateCopyWithImpl(
      NotLoggedAuthState _value, $Res Function(NotLoggedAuthState) _then)
      : super(_value, (v) => _then(v as NotLoggedAuthState));

  @override
  NotLoggedAuthState get _value => super._value as NotLoggedAuthState;
}

/// @nodoc
class _$NotLoggedAuthState implements NotLoggedAuthState {
  const _$NotLoggedAuthState();

  @override
  String toString() {
    return 'AuthViewModel.notLogged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NotLoggedAuthState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult init(),
    @required TResult logged(),
    @required TResult notLogged(),
  }) {
    assert(init != null);
    assert(logged != null);
    assert(notLogged != null);
    return notLogged();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult init(),
    TResult logged(),
    TResult notLogged(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (notLogged != null) {
      return notLogged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult init(InitAuthState value),
    @required TResult logged(LoggedAuthState value),
    @required TResult notLogged(NotLoggedAuthState value),
  }) {
    assert(init != null);
    assert(logged != null);
    assert(notLogged != null);
    return notLogged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult init(InitAuthState value),
    TResult logged(LoggedAuthState value),
    TResult notLogged(NotLoggedAuthState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (notLogged != null) {
      return notLogged(this);
    }
    return orElse();
  }
}

abstract class NotLoggedAuthState implements AuthViewModel {
  const factory NotLoggedAuthState() = _$NotLoggedAuthState;
}
