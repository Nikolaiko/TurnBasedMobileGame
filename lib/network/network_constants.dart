class NetworkConstants {
  static const String _version_number = "1";
  static const String _base_url = "http://192.168.1.170:8080/api/v$_version_number";

  static const String user_login_url = "$_base_url/users/login";
}