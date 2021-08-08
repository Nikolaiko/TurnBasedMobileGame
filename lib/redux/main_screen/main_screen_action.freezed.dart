// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'main_screen_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MainScreenActionTearOff {
  const _$MainScreenActionTearOff();

  ShowProfileErrorAction profileError() {
    return const ShowProfileErrorAction();
  }

  ShowLoadUserDataErrorAction loadUserDataError() {
    return const ShowLoadUserDataErrorAction();
  }

  ShowUserDataAction showUserData(UserData data) {
    return ShowUserDataAction(
      data,
    );
  }
}

/// @nodoc
const $MainScreenAction = _$MainScreenActionTearOff();

/// @nodoc
mixin _$MainScreenAction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() profileError,
    required TResult Function() loadUserDataError,
    required TResult Function(UserData data) showUserData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? profileError,
    TResult Function()? loadUserDataError,
    TResult Function(UserData data)? showUserData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowProfileErrorAction value) profileError,
    required TResult Function(ShowLoadUserDataErrorAction value)
        loadUserDataError,
    required TResult Function(ShowUserDataAction value) showUserData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowProfileErrorAction value)? profileError,
    TResult Function(ShowLoadUserDataErrorAction value)? loadUserDataError,
    TResult Function(ShowUserDataAction value)? showUserData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainScreenActionCopyWith<$Res> {
  factory $MainScreenActionCopyWith(
          MainScreenAction value, $Res Function(MainScreenAction) then) =
      _$MainScreenActionCopyWithImpl<$Res>;
}

/// @nodoc
class _$MainScreenActionCopyWithImpl<$Res>
    implements $MainScreenActionCopyWith<$Res> {
  _$MainScreenActionCopyWithImpl(this._value, this._then);

  final MainScreenAction _value;
  // ignore: unused_field
  final $Res Function(MainScreenAction) _then;
}

/// @nodoc
abstract class $ShowProfileErrorActionCopyWith<$Res> {
  factory $ShowProfileErrorActionCopyWith(ShowProfileErrorAction value,
          $Res Function(ShowProfileErrorAction) then) =
      _$ShowProfileErrorActionCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShowProfileErrorActionCopyWithImpl<$Res>
    extends _$MainScreenActionCopyWithImpl<$Res>
    implements $ShowProfileErrorActionCopyWith<$Res> {
  _$ShowProfileErrorActionCopyWithImpl(ShowProfileErrorAction _value,
      $Res Function(ShowProfileErrorAction) _then)
      : super(_value, (v) => _then(v as ShowProfileErrorAction));

  @override
  ShowProfileErrorAction get _value => super._value as ShowProfileErrorAction;
}

/// @nodoc

class _$ShowProfileErrorAction implements ShowProfileErrorAction {
  const _$ShowProfileErrorAction();

  @override
  String toString() {
    return 'MainScreenAction.profileError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ShowProfileErrorAction);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() profileError,
    required TResult Function() loadUserDataError,
    required TResult Function(UserData data) showUserData,
  }) {
    return profileError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? profileError,
    TResult Function()? loadUserDataError,
    TResult Function(UserData data)? showUserData,
    required TResult orElse(),
  }) {
    if (profileError != null) {
      return profileError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowProfileErrorAction value) profileError,
    required TResult Function(ShowLoadUserDataErrorAction value)
        loadUserDataError,
    required TResult Function(ShowUserDataAction value) showUserData,
  }) {
    return profileError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowProfileErrorAction value)? profileError,
    TResult Function(ShowLoadUserDataErrorAction value)? loadUserDataError,
    TResult Function(ShowUserDataAction value)? showUserData,
    required TResult orElse(),
  }) {
    if (profileError != null) {
      return profileError(this);
    }
    return orElse();
  }
}

abstract class ShowProfileErrorAction implements MainScreenAction {
  const factory ShowProfileErrorAction() = _$ShowProfileErrorAction;
}

/// @nodoc
abstract class $ShowLoadUserDataErrorActionCopyWith<$Res> {
  factory $ShowLoadUserDataErrorActionCopyWith(
          ShowLoadUserDataErrorAction value,
          $Res Function(ShowLoadUserDataErrorAction) then) =
      _$ShowLoadUserDataErrorActionCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShowLoadUserDataErrorActionCopyWithImpl<$Res>
    extends _$MainScreenActionCopyWithImpl<$Res>
    implements $ShowLoadUserDataErrorActionCopyWith<$Res> {
  _$ShowLoadUserDataErrorActionCopyWithImpl(ShowLoadUserDataErrorAction _value,
      $Res Function(ShowLoadUserDataErrorAction) _then)
      : super(_value, (v) => _then(v as ShowLoadUserDataErrorAction));

  @override
  ShowLoadUserDataErrorAction get _value =>
      super._value as ShowLoadUserDataErrorAction;
}

/// @nodoc

class _$ShowLoadUserDataErrorAction implements ShowLoadUserDataErrorAction {
  const _$ShowLoadUserDataErrorAction();

  @override
  String toString() {
    return 'MainScreenAction.loadUserDataError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ShowLoadUserDataErrorAction);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() profileError,
    required TResult Function() loadUserDataError,
    required TResult Function(UserData data) showUserData,
  }) {
    return loadUserDataError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? profileError,
    TResult Function()? loadUserDataError,
    TResult Function(UserData data)? showUserData,
    required TResult orElse(),
  }) {
    if (loadUserDataError != null) {
      return loadUserDataError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowProfileErrorAction value) profileError,
    required TResult Function(ShowLoadUserDataErrorAction value)
        loadUserDataError,
    required TResult Function(ShowUserDataAction value) showUserData,
  }) {
    return loadUserDataError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowProfileErrorAction value)? profileError,
    TResult Function(ShowLoadUserDataErrorAction value)? loadUserDataError,
    TResult Function(ShowUserDataAction value)? showUserData,
    required TResult orElse(),
  }) {
    if (loadUserDataError != null) {
      return loadUserDataError(this);
    }
    return orElse();
  }
}

abstract class ShowLoadUserDataErrorAction implements MainScreenAction {
  const factory ShowLoadUserDataErrorAction() = _$ShowLoadUserDataErrorAction;
}

/// @nodoc
abstract class $ShowUserDataActionCopyWith<$Res> {
  factory $ShowUserDataActionCopyWith(
          ShowUserDataAction value, $Res Function(ShowUserDataAction) then) =
      _$ShowUserDataActionCopyWithImpl<$Res>;
  $Res call({UserData data});

  $UserDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ShowUserDataActionCopyWithImpl<$Res>
    extends _$MainScreenActionCopyWithImpl<$Res>
    implements $ShowUserDataActionCopyWith<$Res> {
  _$ShowUserDataActionCopyWithImpl(
      ShowUserDataAction _value, $Res Function(ShowUserDataAction) _then)
      : super(_value, (v) => _then(v as ShowUserDataAction));

  @override
  ShowUserDataAction get _value => super._value as ShowUserDataAction;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(ShowUserDataAction(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserData,
    ));
  }

  @override
  $UserDataCopyWith<$Res> get data {
    return $UserDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$ShowUserDataAction implements ShowUserDataAction {
  const _$ShowUserDataAction(this.data);

  @override
  final UserData data;

  @override
  String toString() {
    return 'MainScreenAction.showUserData(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShowUserDataAction &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $ShowUserDataActionCopyWith<ShowUserDataAction> get copyWith =>
      _$ShowUserDataActionCopyWithImpl<ShowUserDataAction>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() profileError,
    required TResult Function() loadUserDataError,
    required TResult Function(UserData data) showUserData,
  }) {
    return showUserData(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? profileError,
    TResult Function()? loadUserDataError,
    TResult Function(UserData data)? showUserData,
    required TResult orElse(),
  }) {
    if (showUserData != null) {
      return showUserData(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowProfileErrorAction value) profileError,
    required TResult Function(ShowLoadUserDataErrorAction value)
        loadUserDataError,
    required TResult Function(ShowUserDataAction value) showUserData,
  }) {
    return showUserData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowProfileErrorAction value)? profileError,
    TResult Function(ShowLoadUserDataErrorAction value)? loadUserDataError,
    TResult Function(ShowUserDataAction value)? showUserData,
    required TResult orElse(),
  }) {
    if (showUserData != null) {
      return showUserData(this);
    }
    return orElse();
  }
}

abstract class ShowUserDataAction implements MainScreenAction {
  const factory ShowUserDataAction(UserData data) = _$ShowUserDataAction;

  UserData get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShowUserDataActionCopyWith<ShowUserDataAction> get copyWith =>
      throw _privateConstructorUsedError;
}
