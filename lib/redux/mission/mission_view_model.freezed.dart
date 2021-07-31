// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'mission_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MissionViewModelTearOff {
  const _$MissionViewModelTearOff();

  MissionNotStartedViewModel notStarted() {
    return const MissionNotStartedViewModel();
  }

  LoadingMissionState loading() {
    return const LoadingMissionState();
  }

  MissionReadyViewModel ready(
      List<List<int>> missionMap, List<Unit> missionUnits) {
    return MissionReadyViewModel(
      missionMap,
      missionUnits,
    );
  }
}

/// @nodoc
const $MissionViewModel = _$MissionViewModelTearOff();

/// @nodoc
mixin _$MissionViewModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notStarted,
    required TResult Function() loading,
    required TResult Function(
            List<List<int>> missionMap, List<Unit> missionUnits)
        ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notStarted,
    TResult Function()? loading,
    TResult Function(List<List<int>> missionMap, List<Unit> missionUnits)?
        ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MissionNotStartedViewModel value) notStarted,
    required TResult Function(LoadingMissionState value) loading,
    required TResult Function(MissionReadyViewModel value) ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MissionNotStartedViewModel value)? notStarted,
    TResult Function(LoadingMissionState value)? loading,
    TResult Function(MissionReadyViewModel value)? ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MissionViewModelCopyWith<$Res> {
  factory $MissionViewModelCopyWith(
          MissionViewModel value, $Res Function(MissionViewModel) then) =
      _$MissionViewModelCopyWithImpl<$Res>;
}

/// @nodoc
class _$MissionViewModelCopyWithImpl<$Res>
    implements $MissionViewModelCopyWith<$Res> {
  _$MissionViewModelCopyWithImpl(this._value, this._then);

  final MissionViewModel _value;
  // ignore: unused_field
  final $Res Function(MissionViewModel) _then;
}

/// @nodoc
abstract class $MissionNotStartedViewModelCopyWith<$Res> {
  factory $MissionNotStartedViewModelCopyWith(MissionNotStartedViewModel value,
          $Res Function(MissionNotStartedViewModel) then) =
      _$MissionNotStartedViewModelCopyWithImpl<$Res>;
}

/// @nodoc
class _$MissionNotStartedViewModelCopyWithImpl<$Res>
    extends _$MissionViewModelCopyWithImpl<$Res>
    implements $MissionNotStartedViewModelCopyWith<$Res> {
  _$MissionNotStartedViewModelCopyWithImpl(MissionNotStartedViewModel _value,
      $Res Function(MissionNotStartedViewModel) _then)
      : super(_value, (v) => _then(v as MissionNotStartedViewModel));

  @override
  MissionNotStartedViewModel get _value =>
      super._value as MissionNotStartedViewModel;
}

/// @nodoc

class _$MissionNotStartedViewModel implements MissionNotStartedViewModel {
  const _$MissionNotStartedViewModel();

  @override
  String toString() {
    return 'MissionViewModel.notStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MissionNotStartedViewModel);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notStarted,
    required TResult Function() loading,
    required TResult Function(
            List<List<int>> missionMap, List<Unit> missionUnits)
        ready,
  }) {
    return notStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notStarted,
    TResult Function()? loading,
    TResult Function(List<List<int>> missionMap, List<Unit> missionUnits)?
        ready,
    required TResult orElse(),
  }) {
    if (notStarted != null) {
      return notStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MissionNotStartedViewModel value) notStarted,
    required TResult Function(LoadingMissionState value) loading,
    required TResult Function(MissionReadyViewModel value) ready,
  }) {
    return notStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MissionNotStartedViewModel value)? notStarted,
    TResult Function(LoadingMissionState value)? loading,
    TResult Function(MissionReadyViewModel value)? ready,
    required TResult orElse(),
  }) {
    if (notStarted != null) {
      return notStarted(this);
    }
    return orElse();
  }
}

abstract class MissionNotStartedViewModel implements MissionViewModel {
  const factory MissionNotStartedViewModel() = _$MissionNotStartedViewModel;
}

/// @nodoc
abstract class $LoadingMissionStateCopyWith<$Res> {
  factory $LoadingMissionStateCopyWith(
          LoadingMissionState value, $Res Function(LoadingMissionState) then) =
      _$LoadingMissionStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingMissionStateCopyWithImpl<$Res>
    extends _$MissionViewModelCopyWithImpl<$Res>
    implements $LoadingMissionStateCopyWith<$Res> {
  _$LoadingMissionStateCopyWithImpl(
      LoadingMissionState _value, $Res Function(LoadingMissionState) _then)
      : super(_value, (v) => _then(v as LoadingMissionState));

  @override
  LoadingMissionState get _value => super._value as LoadingMissionState;
}

/// @nodoc

class _$LoadingMissionState implements LoadingMissionState {
  const _$LoadingMissionState();

  @override
  String toString() {
    return 'MissionViewModel.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadingMissionState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notStarted,
    required TResult Function() loading,
    required TResult Function(
            List<List<int>> missionMap, List<Unit> missionUnits)
        ready,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notStarted,
    TResult Function()? loading,
    TResult Function(List<List<int>> missionMap, List<Unit> missionUnits)?
        ready,
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
    required TResult Function(MissionNotStartedViewModel value) notStarted,
    required TResult Function(LoadingMissionState value) loading,
    required TResult Function(MissionReadyViewModel value) ready,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MissionNotStartedViewModel value)? notStarted,
    TResult Function(LoadingMissionState value)? loading,
    TResult Function(MissionReadyViewModel value)? ready,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingMissionState implements MissionViewModel {
  const factory LoadingMissionState() = _$LoadingMissionState;
}

/// @nodoc
abstract class $MissionReadyViewModelCopyWith<$Res> {
  factory $MissionReadyViewModelCopyWith(MissionReadyViewModel value,
          $Res Function(MissionReadyViewModel) then) =
      _$MissionReadyViewModelCopyWithImpl<$Res>;
  $Res call({List<List<int>> missionMap, List<Unit> missionUnits});
}

/// @nodoc
class _$MissionReadyViewModelCopyWithImpl<$Res>
    extends _$MissionViewModelCopyWithImpl<$Res>
    implements $MissionReadyViewModelCopyWith<$Res> {
  _$MissionReadyViewModelCopyWithImpl(
      MissionReadyViewModel _value, $Res Function(MissionReadyViewModel) _then)
      : super(_value, (v) => _then(v as MissionReadyViewModel));

  @override
  MissionReadyViewModel get _value => super._value as MissionReadyViewModel;

  @override
  $Res call({
    Object? missionMap = freezed,
    Object? missionUnits = freezed,
  }) {
    return _then(MissionReadyViewModel(
      missionMap == freezed
          ? _value.missionMap
          : missionMap // ignore: cast_nullable_to_non_nullable
              as List<List<int>>,
      missionUnits == freezed
          ? _value.missionUnits
          : missionUnits // ignore: cast_nullable_to_non_nullable
              as List<Unit>,
    ));
  }
}

/// @nodoc

class _$MissionReadyViewModel implements MissionReadyViewModel {
  const _$MissionReadyViewModel(this.missionMap, this.missionUnits);

  @override
  final List<List<int>> missionMap;
  @override
  final List<Unit> missionUnits;

  @override
  String toString() {
    return 'MissionViewModel.ready(missionMap: $missionMap, missionUnits: $missionUnits)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MissionReadyViewModel &&
            (identical(other.missionMap, missionMap) ||
                const DeepCollectionEquality()
                    .equals(other.missionMap, missionMap)) &&
            (identical(other.missionUnits, missionUnits) ||
                const DeepCollectionEquality()
                    .equals(other.missionUnits, missionUnits)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(missionMap) ^
      const DeepCollectionEquality().hash(missionUnits);

  @JsonKey(ignore: true)
  @override
  $MissionReadyViewModelCopyWith<MissionReadyViewModel> get copyWith =>
      _$MissionReadyViewModelCopyWithImpl<MissionReadyViewModel>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notStarted,
    required TResult Function() loading,
    required TResult Function(
            List<List<int>> missionMap, List<Unit> missionUnits)
        ready,
  }) {
    return ready(missionMap, missionUnits);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notStarted,
    TResult Function()? loading,
    TResult Function(List<List<int>> missionMap, List<Unit> missionUnits)?
        ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(missionMap, missionUnits);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MissionNotStartedViewModel value) notStarted,
    required TResult Function(LoadingMissionState value) loading,
    required TResult Function(MissionReadyViewModel value) ready,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MissionNotStartedViewModel value)? notStarted,
    TResult Function(LoadingMissionState value)? loading,
    TResult Function(MissionReadyViewModel value)? ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class MissionReadyViewModel implements MissionViewModel {
  const factory MissionReadyViewModel(
          List<List<int>> missionMap, List<Unit> missionUnits) =
      _$MissionReadyViewModel;

  List<List<int>> get missionMap => throw _privateConstructorUsedError;
  List<Unit> get missionUnits => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MissionReadyViewModelCopyWith<MissionReadyViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}
