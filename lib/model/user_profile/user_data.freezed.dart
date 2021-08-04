// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserDataTearOff {
  const _$UserDataTearOff();

  _UserData call(int level, int experiense, int nextLevelExp, int tokens,
      List<LocationData> locations) {
    return _UserData(
      level,
      experiense,
      nextLevelExp,
      tokens,
      locations,
    );
  }
}

/// @nodoc
const $UserData = _$UserDataTearOff();

/// @nodoc
mixin _$UserData {
  int get level => throw _privateConstructorUsedError;
  int get experiense => throw _privateConstructorUsedError;
  int get nextLevelExp => throw _privateConstructorUsedError;
  int get tokens => throw _privateConstructorUsedError;
  List<LocationData> get locations => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserDataCopyWith<UserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataCopyWith<$Res> {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) then) =
      _$UserDataCopyWithImpl<$Res>;
  $Res call(
      {int level,
      int experiense,
      int nextLevelExp,
      int tokens,
      List<LocationData> locations});
}

/// @nodoc
class _$UserDataCopyWithImpl<$Res> implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(this._value, this._then);

  final UserData _value;
  // ignore: unused_field
  final $Res Function(UserData) _then;

  @override
  $Res call({
    Object? level = freezed,
    Object? experiense = freezed,
    Object? nextLevelExp = freezed,
    Object? tokens = freezed,
    Object? locations = freezed,
  }) {
    return _then(_value.copyWith(
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      experiense: experiense == freezed
          ? _value.experiense
          : experiense // ignore: cast_nullable_to_non_nullable
              as int,
      nextLevelExp: nextLevelExp == freezed
          ? _value.nextLevelExp
          : nextLevelExp // ignore: cast_nullable_to_non_nullable
              as int,
      tokens: tokens == freezed
          ? _value.tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as int,
      locations: locations == freezed
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<LocationData>,
    ));
  }
}

/// @nodoc
abstract class _$UserDataCopyWith<$Res> implements $UserDataCopyWith<$Res> {
  factory _$UserDataCopyWith(_UserData value, $Res Function(_UserData) then) =
      __$UserDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {int level,
      int experiense,
      int nextLevelExp,
      int tokens,
      List<LocationData> locations});
}

/// @nodoc
class __$UserDataCopyWithImpl<$Res> extends _$UserDataCopyWithImpl<$Res>
    implements _$UserDataCopyWith<$Res> {
  __$UserDataCopyWithImpl(_UserData _value, $Res Function(_UserData) _then)
      : super(_value, (v) => _then(v as _UserData));

  @override
  _UserData get _value => super._value as _UserData;

  @override
  $Res call({
    Object? level = freezed,
    Object? experiense = freezed,
    Object? nextLevelExp = freezed,
    Object? tokens = freezed,
    Object? locations = freezed,
  }) {
    return _then(_UserData(
      level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      experiense == freezed
          ? _value.experiense
          : experiense // ignore: cast_nullable_to_non_nullable
              as int,
      nextLevelExp == freezed
          ? _value.nextLevelExp
          : nextLevelExp // ignore: cast_nullable_to_non_nullable
              as int,
      tokens == freezed
          ? _value.tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as int,
      locations == freezed
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<LocationData>,
    ));
  }
}

/// @nodoc

class _$_UserData implements _UserData {
  const _$_UserData(this.level, this.experiense, this.nextLevelExp, this.tokens,
      this.locations);

  @override
  final int level;
  @override
  final int experiense;
  @override
  final int nextLevelExp;
  @override
  final int tokens;
  @override
  final List<LocationData> locations;

  @override
  String toString() {
    return 'UserData(level: $level, experiense: $experiense, nextLevelExp: $nextLevelExp, tokens: $tokens, locations: $locations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserData &&
            (identical(other.level, level) ||
                const DeepCollectionEquality().equals(other.level, level)) &&
            (identical(other.experiense, experiense) ||
                const DeepCollectionEquality()
                    .equals(other.experiense, experiense)) &&
            (identical(other.nextLevelExp, nextLevelExp) ||
                const DeepCollectionEquality()
                    .equals(other.nextLevelExp, nextLevelExp)) &&
            (identical(other.tokens, tokens) ||
                const DeepCollectionEquality().equals(other.tokens, tokens)) &&
            (identical(other.locations, locations) ||
                const DeepCollectionEquality()
                    .equals(other.locations, locations)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(level) ^
      const DeepCollectionEquality().hash(experiense) ^
      const DeepCollectionEquality().hash(nextLevelExp) ^
      const DeepCollectionEquality().hash(tokens) ^
      const DeepCollectionEquality().hash(locations);

  @JsonKey(ignore: true)
  @override
  _$UserDataCopyWith<_UserData> get copyWith =>
      __$UserDataCopyWithImpl<_UserData>(this, _$identity);
}

abstract class _UserData implements UserData {
  const factory _UserData(int level, int experiense, int nextLevelExp,
      int tokens, List<LocationData> locations) = _$_UserData;

  @override
  int get level => throw _privateConstructorUsedError;
  @override
  int get experiense => throw _privateConstructorUsedError;
  @override
  int get nextLevelExp => throw _privateConstructorUsedError;
  @override
  int get tokens => throw _privateConstructorUsedError;
  @override
  List<LocationData> get locations => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserDataCopyWith<_UserData> get copyWith =>
      throw _privateConstructorUsedError;
}
