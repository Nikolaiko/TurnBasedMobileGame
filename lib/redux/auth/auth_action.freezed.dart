// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthActionTearOff {
  const _$AuthActionTearOff();

// ignore: unused_element
  LogUserInAction logUserIn(UserProfile userToLogin) {
    return LogUserInAction(
      userToLogin,
    );
  }

// ignore: unused_element
  SetNotLoggedInAction setNotLoggedInUser() {
    return const SetNotLoggedInAction();
  }
}

/// @nodoc
// ignore: unused_element
const $AuthAction = _$AuthActionTearOff();

/// @nodoc
mixin _$AuthAction {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult logUserIn(UserProfile userToLogin),
    @required TResult setNotLoggedInUser(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult logUserIn(UserProfile userToLogin),
    TResult setNotLoggedInUser(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult logUserIn(LogUserInAction value),
    @required TResult setNotLoggedInUser(SetNotLoggedInAction value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult logUserIn(LogUserInAction value),
    TResult setNotLoggedInUser(SetNotLoggedInAction value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AuthActionCopyWith<$Res> {
  factory $AuthActionCopyWith(
          AuthAction value, $Res Function(AuthAction) then) =
      _$AuthActionCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthActionCopyWithImpl<$Res> implements $AuthActionCopyWith<$Res> {
  _$AuthActionCopyWithImpl(this._value, this._then);

  final AuthAction _value;
  // ignore: unused_field
  final $Res Function(AuthAction) _then;
}

/// @nodoc
abstract class $LogUserInActionCopyWith<$Res> {
  factory $LogUserInActionCopyWith(
          LogUserInAction value, $Res Function(LogUserInAction) then) =
      _$LogUserInActionCopyWithImpl<$Res>;
  $Res call({UserProfile userToLogin});

  $UserProfileCopyWith<$Res> get userToLogin;
}

/// @nodoc
class _$LogUserInActionCopyWithImpl<$Res> extends _$AuthActionCopyWithImpl<$Res>
    implements $LogUserInActionCopyWith<$Res> {
  _$LogUserInActionCopyWithImpl(
      LogUserInAction _value, $Res Function(LogUserInAction) _then)
      : super(_value, (v) => _then(v as LogUserInAction));

  @override
  LogUserInAction get _value => super._value as LogUserInAction;

  @override
  $Res call({
    Object userToLogin = freezed,
  }) {
    return _then(LogUserInAction(
      userToLogin == freezed ? _value.userToLogin : userToLogin as UserProfile,
    ));
  }

  @override
  $UserProfileCopyWith<$Res> get userToLogin {
    if (_value.userToLogin == null) {
      return null;
    }
    return $UserProfileCopyWith<$Res>(_value.userToLogin, (value) {
      return _then(_value.copyWith(userToLogin: value));
    });
  }
}

/// @nodoc
class _$LogUserInAction implements LogUserInAction {
  const _$LogUserInAction(this.userToLogin) : assert(userToLogin != null);

  @override
  final UserProfile userToLogin;

  @override
  String toString() {
    return 'AuthAction.logUserIn(userToLogin: $userToLogin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LogUserInAction &&
            (identical(other.userToLogin, userToLogin) ||
                const DeepCollectionEquality()
                    .equals(other.userToLogin, userToLogin)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userToLogin);

  @JsonKey(ignore: true)
  @override
  $LogUserInActionCopyWith<LogUserInAction> get copyWith =>
      _$LogUserInActionCopyWithImpl<LogUserInAction>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult logUserIn(UserProfile userToLogin),
    @required TResult setNotLoggedInUser(),
  }) {
    assert(logUserIn != null);
    assert(setNotLoggedInUser != null);
    return logUserIn(userToLogin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult logUserIn(UserProfile userToLogin),
    TResult setNotLoggedInUser(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (logUserIn != null) {
      return logUserIn(userToLogin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult logUserIn(LogUserInAction value),
    @required TResult setNotLoggedInUser(SetNotLoggedInAction value),
  }) {
    assert(logUserIn != null);
    assert(setNotLoggedInUser != null);
    return logUserIn(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult logUserIn(LogUserInAction value),
    TResult setNotLoggedInUser(SetNotLoggedInAction value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (logUserIn != null) {
      return logUserIn(this);
    }
    return orElse();
  }
}

abstract class LogUserInAction implements AuthAction {
  const factory LogUserInAction(UserProfile userToLogin) = _$LogUserInAction;

  UserProfile get userToLogin;
  @JsonKey(ignore: true)
  $LogUserInActionCopyWith<LogUserInAction> get copyWith;
}

/// @nodoc
abstract class $SetNotLoggedInActionCopyWith<$Res> {
  factory $SetNotLoggedInActionCopyWith(SetNotLoggedInAction value,
          $Res Function(SetNotLoggedInAction) then) =
      _$SetNotLoggedInActionCopyWithImpl<$Res>;
}

/// @nodoc
class _$SetNotLoggedInActionCopyWithImpl<$Res>
    extends _$AuthActionCopyWithImpl<$Res>
    implements $SetNotLoggedInActionCopyWith<$Res> {
  _$SetNotLoggedInActionCopyWithImpl(
      SetNotLoggedInAction _value, $Res Function(SetNotLoggedInAction) _then)
      : super(_value, (v) => _then(v as SetNotLoggedInAction));

  @override
  SetNotLoggedInAction get _value => super._value as SetNotLoggedInAction;
}

/// @nodoc
class _$SetNotLoggedInAction implements SetNotLoggedInAction {
  const _$SetNotLoggedInAction();

  @override
  String toString() {
    return 'AuthAction.setNotLoggedInUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SetNotLoggedInAction);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult logUserIn(UserProfile userToLogin),
    @required TResult setNotLoggedInUser(),
  }) {
    assert(logUserIn != null);
    assert(setNotLoggedInUser != null);
    return setNotLoggedInUser();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult logUserIn(UserProfile userToLogin),
    TResult setNotLoggedInUser(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (setNotLoggedInUser != null) {
      return setNotLoggedInUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult logUserIn(LogUserInAction value),
    @required TResult setNotLoggedInUser(SetNotLoggedInAction value),
  }) {
    assert(logUserIn != null);
    assert(setNotLoggedInUser != null);
    return setNotLoggedInUser(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult logUserIn(LogUserInAction value),
    TResult setNotLoggedInUser(SetNotLoggedInAction value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (setNotLoggedInUser != null) {
      return setNotLoggedInUser(this);
    }
    return orElse();
  }
}

abstract class SetNotLoggedInAction implements AuthAction {
  const factory SetNotLoggedInAction() = _$SetNotLoggedInAction;
}
