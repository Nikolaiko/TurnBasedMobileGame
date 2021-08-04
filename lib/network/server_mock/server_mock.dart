import 'package:sqflite/sqflite.dart';
import 'package:turn_based_game/model/network/user_auth_data.dart';
import 'package:turn_based_game/network/server_mock/db_names.dart';
import 'package:turn_based_game/network/server_mock/db_statements.dart';

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

  Future<void> tryToLogin(UserAuthData data) async {
    
    List<Map>? list = await _db?.rawQuery('SELECT * FROM $userTableName WHERE $usernameFieldName = ? AND $userPasswordFieldName = ?', [data.name, data.password]);
    if (list?.isNotEmpty ?? false) {
      Map<dynamic, dynamic> user = list!.first;

    }
  }

  Future<void> tryToRegister(UserAuthData data) async {
    
  }
}