
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:turn_based_game/model/user_profile/user_data.dart';

part 'main_screen_action.freezed.dart';

@freezed
abstract class MainScreenAction with _$MainScreenAction {    
  const factory MainScreenAction.profileError() = ShowProfileErrorAction; 

  const factory MainScreenAction.loadUserDataError() 
                                            = ShowLoadUserDataErrorAction;
                                            
  const factory MainScreenAction.showUserData(UserData data) 
                                            = ShowUserDataAction;
}