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

  LoadUserDataAction load() {
    return const LoadUserDataAction();
  }

  ShowProfileErrorAction profileError() {
    return const ShowProfileErrorAction();
  }
}

/// @nodoc
const $MainScreenAction = _$MainScreenActionTearOff();

/// @nodoc
mixin _$MainScreenAction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() profileError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? profileError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUserDataAction value) load,
    required TResult Function(ShowProfileErrorAction value) profileError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUserDataAction value)? load,
    TResult Function(ShowProfileErrorAction value)? profileError,
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
abstract class $LoadUserDataActionCopyWith<$Res> {
  factory $LoadUserDataActionCopyWith(
          LoadUserDataAction value, $Res Function(LoadUserDataAction) then) =
      _$LoadUserDataActionCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadUserDataActionCopyWithImpl<$Res>
    extends _$MainScreenActionCopyWithImpl<$Res>
    implements $LoadUserDataActionCopyWith<$Res> {
  _$LoadUserDataActionCopyWithImpl(
      LoadUserDataAction _value, $Res Function(LoadUserDataAction) _then)
      : super(_value, (v) => _then(v as LoadUserDataAction));

  @override
  LoadUserDataAction get _value => super._value as LoadUserDataAction;
}

/// @nodoc

class _$LoadUserDataAction implements LoadUserDataAction {
  const _$LoadUserDataAction();

  @override
  String toString() {
    return 'MainScreenAction.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadUserDataAction);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() profileError,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? profileError,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUserDataAction value) load,
    required TResult Function(ShowProfileErrorAction value) profileError,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUserDataAction value)? load,
    TResult Function(ShowProfileErrorAction value)? profileError,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class LoadUserDataAction implements MainScreenAction {
  const factory LoadUserDataAction() = _$LoadUserDataAction;
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
    required TResult Function() load,
    required TResult Function() profileError,
  }) {
    return profileError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? profileError,
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
    required TResult Function(LoadUserDataAction value) load,
    required TResult Function(ShowProfileErrorAction value) profileError,
  }) {
    return profileError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUserDataAction value)? load,
    TResult Function(ShowProfileErrorAction value)? profileError,
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
