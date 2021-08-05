import 'package:sqflite/sqflite.dart';
import 'package:turn_based_game/model/network/user_auth_data.dart';
import 'package:turn_based_game/network/server_mock/db_names.dart';
import 'package:turn_based_game/network/server_mock/db_statements.dart';
import 'package:turn_based_game/network/server_mock/user_server_response.dart';

class ServerMock {
  static const String dbName = "mock_server_db.db";
  static const int dbVersion = 1;

  Database? _db;

  Future<void> init() async {
    _db = await openDatabase(
      dbName,
      version: dbVersion,
      onCreate: _onCreateDatabase
    );
  }

  Future<void> _onCreateDatabase(Database? database, int version) async {
    await database?.execute(createInitialTablesCommand);
    await database?.rawInsert(addTestUsersCommand);
  }

  Future<UserServerResponse?> tryToLogin(UserAuthData data) async {
    UserServerResponse? response;

    List<Map>? list = await _db?.rawQuery('SELECT * FROM $userTableName WHERE $usernameFieldName = ? AND $userPasswordFieldName = ?', [data.name, data.password]);
    if (list?.isNotEmpty ?? false) {
      Map<dynamic, dynamic> userMap = list!.first;
      response = UserServerResponse(
        userMap[idFieldName] as String,
        userMap[usernameFieldName] as String,
        userMap[userPasswordFieldName] as String
      );
    }
    return response;
  }

  Future<UserServerResponse?> tryToRegister(UserAuthData data) async {
    UserServerResponse? response;

    List<Map>? foundedUsers = await _db?.rawQuery('SELECT * FROM $userTableName WHERE $usernameFieldName = ?', [data.name]);
    if (foundedUsers?.isEmpty ?? false) {
      int? newId = await _db?.insert(
        userTableName,
         { 
          usernameFieldName : data.name, 
          userPasswordFieldName : data.password
        } 
      );

      if (newId != null) {
        response = UserServerResponse(
          newId.toString(), 
          data.name, 
          data.password
        );  
      }      
    }
    return response;
  }
}