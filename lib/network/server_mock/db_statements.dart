import 'package:turn_based_game/network/server_mock/db_names.dart';

const String createUsersTableCommand = '''
CREATE TABLE $userTableName (
  $idFieldName INTEGER PRIMARY KEY, 
  $usernameFieldName TEXT, 
  $userPasswordFieldName TEXT  
);
''';

const String createMissionsTableCommand = '''
CREATE TABLE $missionsTableName (
  $idFieldName INTEGER PRIMARY KEY,
  $connectedLocationIdFieldName INTEGER,
  $missionNameFieldName TEXT  
);
''';


const String createLocationsTableCommand = '''
CREATE TABLE $locationsTableName (
  $idFieldName INTEGER PRIMARY KEY,  
  $locationNameFieldName TEXT  
);
''';


const String createResourcesTableCommand = '''
CREATE TABLE $resourcesTableName (
  $idFieldName INTEGER PRIMARY KEY,  
  $resourcesNameFieldName TEXT  
);
''';

const String createUserResourcesTableCommand = '''
CREATE TABLE $userResourcesTableName (
  $idFieldName INTEGER PRIMARY KEY,
  $connectedUserIdFieldName INTEGER,
  $connectedResIdFieldName INTEGER,
  $resourceAmountFieldName INTEGER  
);
''';

const String createUserMissionsTableCommand = '''
CREATE TABLE $userMissionsTableName (
  $idFieldName INTEGER PRIMARY KEY,
  $connectedUserIdFieldName INTEGER,
  $connectedMissionIdFieldName INTEGER,
  $missionStatusFieldName TEXT
);
''';

const String createUserLocationsTableCommand = '''
CREATE TABLE $userLocationsTableName (
  $idFieldName INTEGER PRIMARY KEY,
  $connectedUserIdFieldName INTEGER,
  $connectedLocationIdFieldName INTEGER
);
''';

const String insertInitialLocations = '''
INSERT INTO $locationsTableName (
  $locationNameFieldName  
) VALUES("$startingLocationName");''';

const String insertResourceTypes = '''
INSERT INTO $resourcesTableName (
  $resourcesNameFieldName  
) VALUES("$tokenResourceName");''';