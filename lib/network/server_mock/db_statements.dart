import 'package:turn_based_game/network/server_mock/db_names.dart';

const String createInitialTablesCommand = '''
CREATE TABLE $userTableName (
  $idFieldName String PRIMARY KEY, 
  $usernameFieldName TEXT, 
  $userPasswordFieldName TEXT  
)

CREATE TABLE $missionsTableName (
  $idFieldName String PRIMARY KEY,
  locationId String,
  name TEXT  
)

CREATE TABLE $locationsTableName (
  $idFieldName String PRIMARY KEY,  
  name TEXT  
)''';

const String addTestUsersCommand = '''
INSERT INTO $userTableName (
  $usernameFieldName, 
  $userPasswordFieldName
) 
VALUES("general", "1234")''';