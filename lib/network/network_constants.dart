class NetworkConstants {
  static const String _versionNumber = "1";
  static const String _baseUrl = "http://192.168.1.170:8080/api/v$_versionNumber";

  static const String userLoginUrl = "$_baseUrl/users/login";
  static const String userRegisterUrl = "$_baseUrl/users/register";
}