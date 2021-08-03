
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_screen_view_model.freezed.dart';

@freezed
abstract class MainScreenViewModel with _$MainScreenViewModel {
  const factory MainScreenViewModel.init() = MainScreenEmptyViewModel;
  const factory MainScreenViewModel.loading() = MainScreenLoadingViewModel;
  const factory MainScreenViewModel.ready() = MainScreenReadyViewModel;
  const factory MainScreenViewModel.profileError() 
                            = MainScreenProfileErrorViewModel;
}