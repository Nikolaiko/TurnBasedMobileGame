
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_screen_state.freezed.dart';

@freezed
abstract class MainScreenState with _$MainScreenState {
  static const initState = MainScreenInitialState();

  const factory MainScreenState.initial() = MainScreenInitialState;
  const factory MainScreenState.loading() = MainScreenLoadingState;
  const factory MainScreenState.ready() = MainScreenReadyState;
  const factory MainScreenState.profileError() = MainScreenProfileErrorState;
}