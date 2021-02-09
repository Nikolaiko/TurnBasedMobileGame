
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_view_model.freezed.dart';

@freezed
abstract class AuthViewModel with _$AuthViewModel {
  const factory AuthViewModel.init() = InitAuthState;
  const factory AuthViewModel.logged() = LoggedAuthState;
  const factory AuthViewModel.notLogged() = NotLoggedAuthState;
}