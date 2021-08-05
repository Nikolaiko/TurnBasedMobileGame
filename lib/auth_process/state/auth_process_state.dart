import 'package:flutter/cupertino.dart';
import 'package:redux/redux.dart';
import 'package:turn_based_game/model/network/network_response.dart';
import 'package:turn_based_game/model/network/user_auth_data.dart';
import 'package:turn_based_game/model/user_profile/user_profile.dart';
import 'package:turn_based_game/network/network_service.dart';
import 'package:turn_based_game/redux/app_state.dart';
import 'package:turn_based_game/redux/auth/auth_action.dart';
import 'package:turn_based_game/repositories/user_profile/user_profile_repository.dart';



///State for auth process
// ignore: prefer_mixin
class AuthProcessState with ChangeNotifier {
  final Store<AppState> _store;
  final NetworkService _networkService;
  final UserProfileRepository _repository; 

  bool _isLoginLoading = false;

  ///Checking if login request in progress
  bool get isLoginLoading => _isLoginLoading;

  ///Checking if loading fields enabled
  bool get isLoginEnabled => !_isLoginLoading && 
    _userName.length >= 3 && 
    _password.isNotEmpty;

  bool _isRegisterLoading = false;

  ///Checking if register request in progress
  bool get isRegisterLoading => _isRegisterLoading;

  ///Checking if register elements enabled
  bool get isRegisterEnabled => !_isRegisterLoading && 
    _newUserName.length >= 3 && 
    _newPassword.isNotEmpty ;

  String _newUserName = "";
  String _newPassword = "";
  String _userName = "";
  String _password = "";

  ///Current username for registration value
  String get newUserName => _newUserName;

  ///Current password for registration value
  String get newPassword => _newPassword;

  ///Current username for login
  String get userName => _userName;

  ///Current password for login
  String get password => _password;


  AuthProcessState(
    this._store,
    this._networkService,
    this._repository
  );

  void setUsername(String value) {
    var oldValue = isLoginEnabled;

    _userName = value;
    var newValue = isLoginEnabled;

    if (newValue != oldValue) {
      notifyListeners();
    }     
  }
  
  void setPassword(String value) {
    var oldValue = isLoginEnabled;

    _password = value;
    var newValue = isLoginEnabled;

    if (newValue != oldValue) {
      notifyListeners();
    }
  }

  void setNewUsername(String value) {
    var oldValue = isRegisterEnabled;

    _newUserName = value;
    var newValue = isRegisterEnabled;

    if (newValue != oldValue) {
      notifyListeners();
    }     
  }
  
  void setNewPassword(String value) {
    var oldValue = isRegisterEnabled;

    _newPassword = value;
    var newValue = isRegisterEnabled;

    if (newValue != oldValue) {
      notifyListeners();
    }
  }
  
  Future<void> tryToLogin() async {
    _isLoginLoading = true;
    notifyListeners();

    var data = UserAuthData(_userName, _password);    
    var response = await _networkService.loginUser(data);
    
    if (response.success) {     
      _repository.setLoggedUser(response.result);  
      _store.dispatch(LogUserInAction(response.result));
    } else {
      print(response.message);
      _isLoginLoading = false;      
      notifyListeners();
    }        
  }
  
  Future<void> tryToRegister() async {
    _isRegisterLoading = true;
    notifyListeners();

    var data = UserAuthData(_userName, _password);    
    var response = await _networkService.registerUser(data);
    if (response.success) {      
      _repository.setLoggedUser(response.result);
      _store.dispatch(LogUserInAction(response.result));
    } else {
      print(response.message);
      _isRegisterLoading = false;      
      notifyListeners();
    }
  }
}