
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_screen_action.freezed.dart';

@freezed
abstract class MainScreenAction with _$MainScreenAction {  
  const factory MainScreenAction.load() = LoadUserDataAction;
  const factory MainScreenAction.profileError() = ShowProfileErrorAction; 
}