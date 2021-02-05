// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserProfileTearOff {
  const _$UserProfileTearOff();

// ignore: unused_element
  _UserProfile call(String id, String name, String password) {
    return _UserProfile(
      id,
      name,
      password,
    );
  }

// ignore: unused_element
  NotLoggedUser notLoggedIn() {
    return const NotLoggedUser();
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
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(String id, String name, String password), {
    TResult notLoggedIn(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(_UserProfile value), {
    @required TResult notLoggedIn(NotLoggedUser value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(_UserProfile value), {
    TResult notLoggedIn(NotLoggedUser value),
    @required TResult orElse(),
  });
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
abstract class _$UserProfileCopyWith<$Res> {
  factory _$UserProfileCopyWith(
          _UserProfile value, $Res Function(_UserProfile) then) =
      __$UserProfileCopyWithImpl<$Res>;
  $Res call({String id, String name, String password});
}

/// @nodoc
class __$UserProfileCopyWithImpl<$Res> extends _$UserProfileCopyWithImpl<$Res>
    implements _$UserProfileCopyWith<$Res> {
  __$UserProfileCopyWithImpl(
      _UserProfile _value, $Res Function(_UserProfile) _then)
      : super(_value, (v) => _then(v as _UserProfile));

  @override
  _UserProfile get _value => super._value as _UserProfile;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object password = freezed,
  }) {
    return _then(_UserProfile(
      id == freezed ? _value.id : id as String,
      name == freezed ? _value.name : name as String,
      password == freezed ? _value.password : password as String,
    ));
  }
}

/// @nodoc
class _$_UserProfile implements _UserProfile {
  const _$_UserProfile(this.id, this.name, this.password)
      : assert(id != null),
        assert(name != null),
        assert(password != null);

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
        (other is _UserProfile &&
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
  _$UserProfileCopyWith<_UserProfile> get copyWith =>
      __$UserProfileCopyWithImpl<_UserProfile>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(String id, String name, String password), {
    @required TResult notLoggedIn(),
  }) {
    assert($default != null);
    assert(notLoggedIn != null);
    return $default(id, name, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(String id, String name, String password), {
    TResult notLoggedIn(),
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
    TResult $default(_UserProfile value), {
    @required TResult notLoggedIn(NotLoggedUser value),
  }) {
    assert($default != null);
    assert(notLoggedIn != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(_UserProfile value), {
    TResult notLoggedIn(NotLoggedUser value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _UserProfile implements UserProfile {
  const factory _UserProfile(String id, String name, String password) =
      _$_UserProfile;

  String get id;
  String get name;
  String get password;
  @JsonKey(ignore: true)
  _$UserProfileCopyWith<_UserProfile> get copyWith;
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

/// @nodoc
class _$NotLoggedUser implements NotLoggedUser {
  const _$NotLoggedUser();

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
  }) {
    assert($default != null);
    assert(notLoggedIn != null);
    return notLoggedIn();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(String id, String name, String password), {
    TResult notLoggedIn(),
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
    TResult $default(_UserProfile value), {
    @required TResult notLoggedIn(NotLoggedUser value),
  }) {
    assert($default != null);
    assert(notLoggedIn != null);
    return notLoggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(_UserProfile value), {
    TResult notLoggedIn(NotLoggedUser value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (notLoggedIn != null) {
      return notLoggedIn(this);
    }
    return orElse();
  }
}

abstract class NotLoggedUser implements UserProfile {
  const factory NotLoggedUser() = _$NotLoggedUser;
}
