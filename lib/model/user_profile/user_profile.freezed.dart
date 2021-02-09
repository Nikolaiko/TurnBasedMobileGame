// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UserProfile _$UserProfileFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'default':
      return LoggedUser.fromJson(json);
    case 'notLoggedIn':
      return NotLoggedUser.fromJson(json);
    case 'initialUser':
      return InitialUser.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$UserProfileTearOff {
  const _$UserProfileTearOff();

// ignore: unused_element
  LoggedUser call(String id, String name, String password) {
    return LoggedUser(
      id,
      name,
      password,
    );
  }

// ignore: unused_element
  NotLoggedUser notLoggedIn() {
    return const NotLoggedUser();
  }

// ignore: unused_element
  InitialUser initialUser() {
    return const InitialUser();
  }

// ignore: unused_element
  UserProfile fromJson(Map<String, Object> json) {
    return UserProfile.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $UserProfile = _$UserProfileTearOff();

/// @nodoc
mixin _$UserProfile {
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(String id, String name, String password), {
    @required TResult notLoggedIn(),
    @required TResult initialUser(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(String id, String name, String password), {
    TResult notLoggedIn(),
    TResult initialUser(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(LoggedUser value), {
    @required TResult notLoggedIn(NotLoggedUser value),
    @required TResult initialUser(InitialUser value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(LoggedUser value), {
    TResult notLoggedIn(NotLoggedUser value),
    TResult initialUser(InitialUser value),
    @required TResult orElse(),
  });
  Map<String, dynamic> toJson();
}

/// @nodoc
abstract class $UserProfileCopyWith<$Res> {
  factory $UserProfileCopyWith(
          UserProfile value, $Res Function(UserProfile) then) =
      _$UserProfileCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserProfileCopyWithImpl<$Res> implements $UserProfileCopyWith<$Res> {
  _$UserProfileCopyWithImpl(this._value, this._then);

  final UserProfile _value;
  // ignore: unused_field
  final $Res Function(UserProfile) _then;
}

/// @nodoc
abstract class $LoggedUserCopyWith<$Res> {
  factory $LoggedUserCopyWith(
          LoggedUser value, $Res Function(LoggedUser) then) =
      _$LoggedUserCopyWithImpl<$Res>;
  $Res call({String id, String name, String password});
}

/// @nodoc
class _$LoggedUserCopyWithImpl<$Res> extends _$UserProfileCopyWithImpl<$Res>
    implements $LoggedUserCopyWith<$Res> {
  _$LoggedUserCopyWithImpl(LoggedUser _value, $Res Function(LoggedUser) _then)
      : super(_value, (v) => _then(v as LoggedUser));

  @override
  LoggedUser get _value => super._value as LoggedUser;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object password = freezed,
  }) {
    return _then(LoggedUser(
      id == freezed ? _value.id : id as String,
      name == freezed ? _value.name : name as String,
      password == freezed ? _value.password : password as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$LoggedUser implements LoggedUser {
  const _$LoggedUser(this.id, this.name, this.password)
      : assert(id != null),
        assert(name != null),
        assert(password != null);

  factory _$LoggedUser.fromJson(Map<String, dynamic> json) =>
      _$_$LoggedUserFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String password;

  @override
  String toString() {
    return 'UserProfile(id: $id, name: $name, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoggedUser &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  $LoggedUserCopyWith<LoggedUser> get copyWith =>
      _$LoggedUserCopyWithImpl<LoggedUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(String id, String name, String password), {
    @required TResult notLoggedIn(),
    @required TResult initialUser(),
  }) {
    assert($default != null);
    assert(notLoggedIn != null);
    assert(initialUser != null);
    return $default(id, name, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(String id, String name, String password), {
    TResult notLoggedIn(),
    TResult initialUser(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(id, name, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(LoggedUser value), {
    @required TResult notLoggedIn(NotLoggedUser value),
    @required TResult initialUser(InitialUser value),
  }) {
    assert($default != null);
    assert(notLoggedIn != null);
    assert(initialUser != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(LoggedUser value), {
    TResult notLoggedIn(NotLoggedUser value),
    TResult initialUser(InitialUser value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$LoggedUserToJson(this)..['runtimeType'] = 'default';
  }
}

abstract class LoggedUser implements UserProfile {
  const factory LoggedUser(String id, String name, String password) =
      _$LoggedUser;

  factory LoggedUser.fromJson(Map<String, dynamic> json) =
      _$LoggedUser.fromJson;

  String get id;
  String get name;
  String get password;
  @JsonKey(ignore: true)
  $LoggedUserCopyWith<LoggedUser> get copyWith;
}

/// @nodoc
abstract class $NotLoggedUserCopyWith<$Res> {
  factory $NotLoggedUserCopyWith(
          NotLoggedUser value, $Res Function(NotLoggedUser) then) =
      _$NotLoggedUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotLoggedUserCopyWithImpl<$Res> extends _$UserProfileCopyWithImpl<$Res>
    implements $NotLoggedUserCopyWith<$Res> {
  _$NotLoggedUserCopyWithImpl(
      NotLoggedUser _value, $Res Function(NotLoggedUser) _then)
      : super(_value, (v) => _then(v as NotLoggedUser));

  @override
  NotLoggedUser get _value => super._value as NotLoggedUser;
}

@JsonSerializable()

/// @nodoc
class _$NotLoggedUser implements NotLoggedUser {
  const _$NotLoggedUser();

  factory _$NotLoggedUser.fromJson(Map<String, dynamic> json) =>
      _$_$NotLoggedUserFromJson(json);

  @override
  String toString() {
    return 'UserProfile.notLoggedIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NotLoggedUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(String id, String name, String password), {
    @required TResult notLoggedIn(),
    @required TResult initialUser(),
  }) {
    assert($default != null);
    assert(notLoggedIn != null);
    assert(initialUser != null);
    return notLoggedIn();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(String id, String name, String password), {
    TResult notLoggedIn(),
    TResult initialUser(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (notLoggedIn != null) {
      return notLoggedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(LoggedUser value), {
    @required TResult notLoggedIn(NotLoggedUser value),
    @required TResult initialUser(InitialUser value),
  }) {
    assert($default != null);
    assert(notLoggedIn != null);
    assert(initialUser != null);
    return notLoggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(LoggedUser value), {
    TResult notLoggedIn(NotLoggedUser value),
    TResult initialUser(InitialUser value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (notLoggedIn != null) {
      return notLoggedIn(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$NotLoggedUserToJson(this)..['runtimeType'] = 'notLoggedIn';
  }
}

abstract class NotLoggedUser implements UserProfile {
  const factory NotLoggedUser() = _$NotLoggedUser;

  factory NotLoggedUser.fromJson(Map<String, dynamic> json) =
      _$NotLoggedUser.fromJson;
}

/// @nodoc
abstract class $InitialUserCopyWith<$Res> {
  factory $InitialUserCopyWith(
          InitialUser value, $Res Function(InitialUser) then) =
      _$InitialUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialUserCopyWithImpl<$Res> extends _$UserProfileCopyWithImpl<$Res>
    implements $InitialUserCopyWith<$Res> {
  _$InitialUserCopyWithImpl(
      InitialUser _value, $Res Function(InitialUser) _then)
      : super(_value, (v) => _then(v as InitialUser));

  @override
  InitialUser get _value => super._value as InitialUser;
}

@JsonSerializable()

/// @nodoc
class _$InitialUser implements InitialUser {
  const _$InitialUser();

  factory _$InitialUser.fromJson(Map<String, dynamic> json) =>
      _$_$InitialUserFromJson(json);

  @override
  String toString() {
    return 'UserProfile.initialUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitialUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(String id, String name, String password), {
    @required TResult notLoggedIn(),
    @required TResult initialUser(),
  }) {
    assert($default != null);
    assert(notLoggedIn != null);
    assert(initialUser != null);
    return initialUser();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(String id, String name, String password), {
    TResult notLoggedIn(),
    TResult initialUser(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialUser != null) {
      return initialUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(LoggedUser value), {
    @required TResult notLoggedIn(NotLoggedUser value),
    @required TResult initialUser(InitialUser value),
  }) {
    assert($default != null);
    assert(notLoggedIn != null);
    assert(initialUser != null);
    return initialUser(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(LoggedUser value), {
    TResult notLoggedIn(NotLoggedUser value),
    TResult initialUser(InitialUser value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialUser != null) {
      return initialUser(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$InitialUserToJson(this)..['runtimeType'] = 'initialUser';
  }
}

abstract class InitialUser implements UserProfile {
  const factory InitialUser() = _$InitialUser;

  factory InitialUser.fromJson(Map<String, dynamic> json) =
      _$InitialUser.fromJson;
}
