// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'main_screen_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MainScreenViewModelTearOff {
  const _$MainScreenViewModelTearOff();

  MainScreenEmptyViewModel init() {
    return const MainScreenEmptyViewModel();
  }

  MainScreenLoadingViewModel loading() {
    return const MainScreenLoadingViewModel();
  }

  MainScreenReadyViewModel ready() {
    return const MainScreenReadyViewModel();
  }

  MainScreenProfileErrorViewModel profileError() {
    return const MainScreenProfileErrorViewModel();
  }
}

/// @nodoc
const $MainScreenViewModel = _$MainScreenViewModelTearOff();

/// @nodoc
mixin _$MainScreenViewModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function() ready,
    required TResult Function() profileError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function()? ready,
    TResult Function()? profileError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainScreenEmptyViewModel value) init,
    required TResult Function(MainScreenLoadingViewModel value) loading,
    required TResult Function(MainScreenReadyViewModel value) ready,
    required TResult Function(MainScreenProfileErrorViewModel value)
        profileError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainScreenEmptyViewModel value)? init,
    TResult Function(MainScreenLoadingViewModel value)? loading,
    TResult Function(MainScreenReadyViewModel value)? ready,
    TResult Function(MainScreenProfileErrorViewModel value)? profileError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainScreenViewModelCopyWith<$Res> {
  factory $MainScreenViewModelCopyWith(
          MainScreenViewModel value, $Res Function(MainScreenViewModel) then) =
      _$MainScreenViewModelCopyWithImpl<$Res>;
}

/// @nodoc
class _$MainScreenViewModelCopyWithImpl<$Res>
    implements $MainScreenViewModelCopyWith<$Res> {
  _$MainScreenViewModelCopyWithImpl(this._value, this._then);

  final MainScreenViewModel _value;
  // ignore: unused_field
  final $Res Function(MainScreenViewModel) _then;
}

/// @nodoc
abstract class $MainScreenEmptyViewModelCopyWith<$Res> {
  factory $MainScreenEmptyViewModelCopyWith(MainScreenEmptyViewModel value,
          $Res Function(MainScreenEmptyViewModel) then) =
      _$MainScreenEmptyViewModelCopyWithImpl<$Res>;
}

/// @nodoc
class _$MainScreenEmptyViewModelCopyWithImpl<$Res>
    extends _$MainScreenViewModelCopyWithImpl<$Res>
    implements $MainScreenEmptyViewModelCopyWith<$Res> {
  _$MainScreenEmptyViewModelCopyWithImpl(MainScreenEmptyViewModel _value,
      $Res Function(MainScreenEmptyViewModel) _then)
      : super(_value, (v) => _then(v as MainScreenEmptyViewModel));

  @override
  MainScreenEmptyViewModel get _value =>
      super._value as MainScreenEmptyViewModel;
}

/// @nodoc

class _$MainScreenEmptyViewModel implements MainScreenEmptyViewModel {
  const _$MainScreenEmptyViewModel();

  @override
  String toString() {
    return 'MainScreenViewModel.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MainScreenEmptyViewModel);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function() ready,
    required TResult Function() profileError,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function()? ready,
    TResult Function()? profileError,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainScreenEmptyViewModel value) init,
    required TResult Function(MainScreenLoadingViewModel value) loading,
    required TResult Function(MainScreenReadyViewModel value) ready,
    required TResult Function(MainScreenProfileErrorViewModel value)
        profileError,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainScreenEmptyViewModel value)? init,
    TResult Function(MainScreenLoadingViewModel value)? loading,
    TResult Function(MainScreenReadyViewModel value)? ready,
    TResult Function(MainScreenProfileErrorViewModel value)? profileError,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class MainScreenEmptyViewModel implements MainScreenViewModel {
  const factory MainScreenEmptyViewModel() = _$MainScreenEmptyViewModel;
}

/// @nodoc
abstract class $MainScreenLoadingViewModelCopyWith<$Res> {
  factory $MainScreenLoadingViewModelCopyWith(MainScreenLoadingViewModel value,
          $Res Function(MainScreenLoadingViewModel) then) =
      _$MainScreenLoadingViewModelCopyWithImpl<$Res>;
}

/// @nodoc
class _$MainScreenLoadingViewModelCopyWithImpl<$Res>
    extends _$MainScreenViewModelCopyWithImpl<$Res>
    implements $MainScreenLoadingViewModelCopyWith<$Res> {
  _$MainScreenLoadingViewModelCopyWithImpl(MainScreenLoadingViewModel _value,
      $Res Function(MainScreenLoadingViewModel) _then)
      : super(_value, (v) => _then(v as MainScreenLoadingViewModel));

  @override
  MainScreenLoadingViewModel get _value =>
      super._value as MainScreenLoadingViewModel;
}

/// @nodoc

class _$MainScreenLoadingViewModel implements MainScreenLoadingViewModel {
  const _$MainScreenLoadingViewModel();

  @override
  String toString() {
    return 'MainScreenViewModel.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MainScreenLoadingViewModel);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function() ready,
    required TResult Function() profileError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function()? ready,
    TResult Function()? profileError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainScreenEmptyViewModel value) init,
    required TResult Function(MainScreenLoadingViewModel value) loading,
    required TResult Function(MainScreenReadyViewModel value) ready,
    required TResult Function(MainScreenProfileErrorViewModel value)
        profileError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainScreenEmptyViewModel value)? init,
    TResult Function(MainScreenLoadingViewModel value)? loading,
    TResult Function(MainScreenReadyViewModel value)? ready,
    TResult Function(MainScreenProfileErrorViewModel value)? profileError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MainScreenLoadingViewModel implements MainScreenViewModel {
  const factory MainScreenLoadingViewModel() = _$MainScreenLoadingViewModel;
}

/// @nodoc
abstract class $MainScreenReadyViewModelCopyWith<$Res> {
  factory $MainScreenReadyViewModelCopyWith(MainScreenReadyViewModel value,
          $Res Function(MainScreenReadyViewModel) then) =
      _$MainScreenReadyViewModelCopyWithImpl<$Res>;
}

/// @nodoc
class _$MainScreenReadyViewModelCopyWithImpl<$Res>
    extends _$MainScreenViewModelCopyWithImpl<$Res>
    implements $MainScreenReadyViewModelCopyWith<$Res> {
  _$MainScreenReadyViewModelCopyWithImpl(MainScreenReadyViewModel _value,
      $Res Function(MainScreenReadyViewModel) _then)
      : super(_value, (v) => _then(v as MainScreenReadyViewModel));

  @override
  MainScreenReadyViewModel get _value =>
      super._value as MainScreenReadyViewModel;
}

/// @nodoc

class _$MainScreenReadyViewModel implements MainScreenReadyViewModel {
  const _$MainScreenReadyViewModel();

  @override
  String toString() {
    return 'MainScreenViewModel.ready()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MainScreenReadyViewModel);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function() ready,
    required TResult Function() profileError,
  }) {
    return ready();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function()? ready,
    TResult Function()? profileError,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainScreenEmptyViewModel value) init,
    required TResult Function(MainScreenLoadingViewModel value) loading,
    required TResult Function(MainScreenReadyViewModel value) ready,
    required TResult Function(MainScreenProfileErrorViewModel value)
        profileError,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainScreenEmptyViewModel value)? init,
    TResult Function(MainScreenLoadingViewModel value)? loading,
    TResult Function(MainScreenReadyViewModel value)? ready,
    TResult Function(MainScreenProfileErrorViewModel value)? profileError,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class MainScreenReadyViewModel implements MainScreenViewModel {
  const factory MainScreenReadyViewModel() = _$MainScreenReadyViewModel;
}

/// @nodoc
abstract class $MainScreenProfileErrorViewModelCopyWith<$Res> {
  factory $MainScreenProfileErrorViewModelCopyWith(
          MainScreenProfileErrorViewModel value,
          $Res Function(MainScreenProfileErrorViewModel) then) =
      _$MainScreenProfileErrorViewModelCopyWithImpl<$Res>;
}

/// @nodoc
class _$MainScreenProfileErrorViewModelCopyWithImpl<$Res>
    extends _$MainScreenViewModelCopyWithImpl<$Res>
    implements $MainScreenProfileErrorViewModelCopyWith<$Res> {
  _$MainScreenProfileErrorViewModelCopyWithImpl(
      MainScreenProfileErrorViewModel _value,
      $Res Function(MainScreenProfileErrorViewModel) _then)
      : super(_value, (v) => _then(v as MainScreenProfileErrorViewModel));

  @override
  MainScreenProfileErrorViewModel get _value =>
      super._value as MainScreenProfileErrorViewModel;
}

/// @nodoc

class _$MainScreenProfileErrorViewModel
    implements MainScreenProfileErrorViewModel {
  const _$MainScreenProfileErrorViewModel();

  @override
  String toString() {
    return 'MainScreenViewModel.profileError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MainScreenProfileErrorViewModel);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function() ready,
    required TResult Function() profileError,
  }) {
    return profileError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function()? ready,
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
    required TResult Function(MainScreenEmptyViewModel value) init,
    required TResult Function(MainScreenLoadingViewModel value) loading,
    required TResult Function(MainScreenReadyViewModel value) ready,
    required TResult Function(MainScreenProfileErrorViewModel value)
        profileError,
  }) {
    return profileError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainScreenEmptyViewModel value)? init,
    TResult Function(MainScreenLoadingViewModel value)? loading,
    TResult Function(MainScreenReadyViewModel value)? ready,
    TResult Function(MainScreenProfileErrorViewModel value)? profileError,
    required TResult orElse(),
  }) {
    if (profileError != null) {
      return profileError(this);
    }
    return orElse();
  }
}

abstract class MainScreenProfileErrorViewModel implements MainScreenViewModel {
  const factory MainScreenProfileErrorViewModel() =
      _$MainScreenProfileErrorViewModel;
}
