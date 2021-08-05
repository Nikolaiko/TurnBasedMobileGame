import 'package:turn_based_game/network/server_mock/db_names.dart';

const String createInitialTablesCommand = '''
CREATE TABLE $userTableName (
  $idFieldName TEXT PRIMARY KEY, 
  $usernameFieldName TEXT, 
  $userPasswordFieldName TEXT  
);

CREATE TABLE $missionsTableName (
  $idFieldName TEXT PRIMARY KEY,
  locationId TEXT,
  name TEXT  
);

CREATE TABLE $locationsTableName (
  $idFieldName TEXT PRIMARY KEY,  
  name TEXT  
);''';

const String addTestUsersCommand = '''
INSERT INTO $userTableName (
  $usernameFieldName, 
  $userPasswordFieldName
) VALUES("general", "1234");''';