// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'auth_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthActionTearOff {
  const _$AuthActionTearOff();

  LogUserInAction logUserIn(UserProfile userToLogin) {
    return LogUserInAction(
      userToLogin,
    );
  }

  SetNotLoggedInAction setNotLoggedInUser() {
    return const SetNotLoggedInAction();
  }
}

/// @nodoc
const $AuthAction = _$AuthActionTearOff();

/// @nodoc
mixin _$AuthAction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserProfile userToLogin) logUserIn,
    required TResult Function() setNotLoggedInUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserProfile userToLogin)? logUserIn,
    TResult Function()? setNotLoggedInUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LogUserInAction value) logUserIn,
    required TResult Function(SetNotLoggedInAction value) setNotLoggedInUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogUserInAction value)? logUserIn,
    TResult Function(SetNotLoggedInAction value)? setNotLoggedInUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
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
    Object? userToLogin = freezed,
  }) {
    return _then(LogUserInAction(
      userToLogin == freezed
          ? _value.userToLogin
          : userToLogin // ignore: cast_nullable_to_non_nullable
              as UserProfile,
    ));
  }

  @override
  $UserProfileCopyWith<$Res> get userToLogin {
    return $UserProfileCopyWith<$Res>(_value.userToLogin, (value) {
      return _then(_value.copyWith(userToLogin: value));
    });
  }
}

/// @nodoc

class _$LogUserInAction implements LogUserInAction {
  const _$LogUserInAction(this.userToLogin);

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
  TResult when<TResult extends Object?>({
    required TResult Function(UserProfile userToLogin) logUserIn,
    required TResult Function() setNotLoggedInUser,
  }) {
    return logUserIn(userToLogin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserProfile userToLogin)? logUserIn,
    TResult Function()? setNotLoggedInUser,
    required TResult orElse(),
  }) {
    if (logUserIn != null) {
      return logUserIn(userToLogin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LogUserInAction value) logUserIn,
    required TResult Function(SetNotLoggedInAction value) setNotLoggedInUser,
  }) {
    return logUserIn(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogUserInAction value)? logUserIn,
    TResult Function(SetNotLoggedInAction value)? setNotLoggedInUser,
    required TResult orElse(),
  }) {
    if (logUserIn != null) {
      return logUserIn(this);
    }
    return orElse();
  }
}

abstract class LogUserInAction implements AuthAction {
  const factory LogUserInAction(UserProfile userToLogin) = _$LogUserInAction;

  UserProfile get userToLogin => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LogUserInActionCopyWith<LogUserInAction> get copyWith =>
      throw _privateConstructorUsedError;
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
  TResult when<TResult extends Object?>({
    required TResult Function(UserProfile userToLogin) logUserIn,
    required TResult Function() setNotLoggedInUser,
  }) {
    return setNotLoggedInUser();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserProfile userToLogin)? logUserIn,
    TResult Function()? setNotLoggedInUser,
    required TResult orElse(),
  }) {
    if (setNotLoggedInUser != null) {
      return setNotLoggedInUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LogUserInAction value) logUserIn,
    required TResult Function(SetNotLoggedInAction value) setNotLoggedInUser,
  }) {
    return setNotLoggedInUser(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogUserInAction value)? logUserIn,
    TResult Function(SetNotLoggedInAction value)? setNotLoggedInUser,
    required TResult orElse(),
  }) {
    if (setNotLoggedInUser != null) {
      return setNotLoggedInUser(this);
    }
    return orElse();
  }
}

abstract class SetNotLoggedInAction implements AuthAction {
  const factory SetNotLoggedInAction() = _$SetNotLoggedInAction;
}
