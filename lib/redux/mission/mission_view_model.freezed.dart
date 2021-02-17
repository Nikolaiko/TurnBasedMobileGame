// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'mission_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$MissionViewModelTearOff {
  const _$MissionViewModelTearOff();

// ignore: unused_element
  MissionNotStartedViewModel notStarted() {
    return const MissionNotStartedViewModel();
  }

// ignore: unused_element
  LoadingMissionState loading() {
    return const LoadingMissionState();
  }

// ignore: unused_element
  MissionReadyViewModel ready(
      List<List<int>> missionMap, List<Unit> missionUnits) {
    return MissionReadyViewModel(
      missionMap,
      missionUnits,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MissionViewModel = _$MissionViewModelTearOff();

/// @nodoc
mixin _$MissionViewModel {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult notStarted(),
    @required TResult loading(),
    @required
        TResult ready(List<List<int>> missionMap, List<Unit> missionUnits),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult notStarted(),
    TResult loading(),
    TResult ready(List<List<int>> missionMap, List<Unit> missionUnits),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult notStarted(MissionNotStartedViewModel value),
    @required TResult loading(LoadingMissionState value),
    @required TResult ready(MissionReadyViewModel value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult notStarted(MissionNotStartedViewModel value),
    TResult loading(LoadingMissionState value),
    TResult ready(MissionReadyViewModel value),
    @required TResult orElse(),
  });
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
  TResult when<TResult extends Object>({
    @required TResult notStarted(),
    @required TResult loading(),
    @required
        TResult ready(List<List<int>> missionMap, List<Unit> missionUnits),
  }) {
    assert(notStarted != null);
    assert(loading != null);
    assert(ready != null);
    return notStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult notStarted(),
    TResult loading(),
    TResult ready(List<List<int>> missionMap, List<Unit> missionUnits),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (notStarted != null) {
      return notStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult notStarted(MissionNotStartedViewModel value),
    @required TResult loading(LoadingMissionState value),
    @required TResult ready(MissionReadyViewModel value),
  }) {
    assert(notStarted != null);
    assert(loading != null);
    assert(ready != null);
    return notStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult notStarted(MissionNotStartedViewModel value),
    TResult loading(LoadingMissionState value),
    TResult ready(MissionReadyViewModel value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
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
  TResult when<TResult extends Object>({
    @required TResult notStarted(),
    @required TResult loading(),
    @required
        TResult ready(List<List<int>> missionMap, List<Unit> missionUnits),
  }) {
    assert(notStarted != null);
    assert(loading != null);
    assert(ready != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult notStarted(),
    TResult loading(),
    TResult ready(List<List<int>> missionMap, List<Unit> missionUnits),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult notStarted(MissionNotStartedViewModel value),
    @required TResult loading(LoadingMissionState value),
    @required TResult ready(MissionReadyViewModel value),
  }) {
    assert(notStarted != null);
    assert(loading != null);
    assert(ready != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult notStarted(MissionNotStartedViewModel value),
    TResult loading(LoadingMissionState value),
    TResult ready(MissionReadyViewModel value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
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
    Object missionMap = freezed,
    Object missionUnits = freezed,
  }) {
    return _then(MissionReadyViewModel(
      missionMap == freezed ? _value.missionMap : missionMap as List<List<int>>,
      missionUnits == freezed
          ? _value.missionUnits
          : missionUnits as List<Unit>,
    ));
  }
}

/// @nodoc
class _$MissionReadyViewModel implements MissionReadyViewModel {
  const _$MissionReadyViewModel(this.missionMap, this.missionUnits)
      : assert(missionMap != null),
        assert(missionUnits != null);

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
  TResult when<TResult extends Object>({
    @required TResult notStarted(),
    @required TResult loading(),
    @required
        TResult ready(List<List<int>> missionMap, List<Unit> missionUnits),
  }) {
    assert(notStarted != null);
    assert(loading != null);
    assert(ready != null);
    return ready(missionMap, missionUnits);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult notStarted(),
    TResult loading(),
    TResult ready(List<List<int>> missionMap, List<Unit> missionUnits),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (ready != null) {
      return ready(missionMap, missionUnits);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult notStarted(MissionNotStartedViewModel value),
    @required TResult loading(LoadingMissionState value),
    @required TResult ready(MissionReadyViewModel value),
  }) {
    assert(notStarted != null);
    assert(loading != null);
    assert(ready != null);
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult notStarted(MissionNotStartedViewModel value),
    TResult loading(LoadingMissionState value),
    TResult ready(MissionReadyViewModel value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
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

  List<List<int>> get missionMap;
  List<Unit> get missionUnits;
  @JsonKey(ignore: true)
  $MissionReadyViewModelCopyWith<MissionReadyViewModel> get copyWith;
}
