import 'package:sqflite/sqflite.dart';
import 'package:turn_based_game/model/network/user_auth_data.dart';
import 'package:turn_based_game/network/server_mock/db_names.dart';
import 'package:turn_based_game/network/server_mock/db_statements.dart';
import 'package:turn_based_game/network/server_mock/entities/location_entity.dart';
import 'package:turn_based_game/network/server_mock/entities/mission_entity.dart';
import 'package:turn_based_game/network/server_mock/entities/resource_entity.dart';
import 'package:turn_based_game/network/server_mock/responses/user_server_response.dart';
import 'package:turn_based_game/network/server_mock/responses/userdata_server_response.dart';

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
    print("Create DB!!!");
    await database?.execute(createUsersTableCommand);
    await database?.execute(createLocationsTableCommand);
    await database?.execute(createMissionsTableCommand);
    await database?.execute(createResourcesTableCommand);
    await database?.execute(createUserLocationsTableCommand);
    await database?.execute(createUserMissionsTableCommand);
    await database?.execute(createUserResourcesTableCommand);
    
    await database?.rawInsert(insertInitialLocations);
    await database?.rawInsert(insertResourceTypes);    

    final List<Map<String, Object?>>? result = await database?.query(
      locationsTableName, 
      columns: [idFieldName], 
      where: "$locationNameFieldName = ?",
      whereArgs: [startingLocationName]
    );   

    Map<String, Object?> location = result!.first;
    int locationId = location[idFieldName] as int;

    database?.insert(
      missionsTableName,
      { 
        missionNameFieldName : "First Mission", 
        connectedLocationIdFieldName : locationId 
      },
      conflictAlgorithm: ConflictAlgorithm.replace
    );

    database?.insert(
      missionsTableName,
      { 
        missionNameFieldName : "Second Mission", 
        connectedLocationIdFieldName : locationId 
      },
      conflictAlgorithm: ConflictAlgorithm.replace
    );

    database?.insert(
      missionsTableName,
      { 
        missionNameFieldName : "Third Mission", 
        connectedLocationIdFieldName : locationId 
      },
      conflictAlgorithm: ConflictAlgorithm.replace
    );    
  }

  Future<UserServerResponse?> tryToLogin(UserAuthData data) async {
    UserServerResponse? response;

    List<Map>? list = await _db?.rawQuery(
      'SELECT * FROM $userTableName WHERE $usernameFieldName = ? AND $userPasswordFieldName = ?', 
      [data.name, data.password]
    );
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

    List<Map>? foundedUsers = await _db?.rawQuery(
      'SELECT * FROM $userTableName WHERE $usernameFieldName = ?', 
      [data.name]
    );
    if (foundedUsers?.isEmpty ?? false) {      
      response = await _db?.transaction<UserServerResponse>((txn) async {
        int newId = await txn.insert(
          userTableName,
          { 
            usernameFieldName : data.name, 
            userPasswordFieldName : data.password
          } 
        );
        
        List<Map<String, Object?>> queryResult = await txn.query(
          resourcesTableName,
          columns: [idFieldName],
          where: "$resourcesNameFieldName = ?",
          whereArgs: [tokenResourceName]
        );
        int tokenResId = queryResult.first[idFieldName] as int;

        await txn.insert(
          userResourcesTableName, 
          {
            connectedUserIdFieldName : newId,
            connectedResIdFieldName : tokenResId,
            resourceAmountFieldName : 1000
          }
        );


        queryResult = await txn.query(
          locationsTableName,
          columns: [idFieldName],
          where: "$locationNameFieldName = ?",
          whereArgs: [startingLocationName]
        );
        int startingLocationId = queryResult.first[idFieldName] as int;

        await txn.insert(
          userLocationsTableName, 
          {
            connectedUserIdFieldName : newId,
            connectedLocationIdFieldName : startingLocationId
          }
        );

        queryResult = await txn.query(
          missionsTableName,
          columns: [idFieldName],
          where: "$connectedLocationIdFieldName = ?",
          whereArgs: [startingLocationId]
        );

        for (var mission in queryResult) {          
          await txn.insert(
            userMissionsTableName, 
            {
              connectedUserIdFieldName : newId,
              connectedMissionIdFieldName : mission[idFieldName],
              missionStatusFieldName : missionNotCompletedStatus
            }
          );
        }                
        return UserServerResponse(newId.toString(), data.name, data.password);
      });                           
    }    
    return response;
  }

  Future<UserDataServerResponse?> tryToGetUserData(String userId) async {
    UserDataServerResponse? response;

    try {
      int id = int.parse(userId);

      print("User Id : $id");

      List<ResourceEntity> resources = await _getUserResources(id);
      List<LocationEntity> locations = await _getUserLocations(id);
      print("Resources : $resources");
      print("Locations : $locations");
      print("Missions : ${locations.first.missions}");

      response = UserDataServerResponse(resources, locations);
    } catch(error) {
      print("Error getting user data : $error");
    }
    return response;
  }

  Future<List<LocationEntity>> _getUserLocations(int userId) async {    
    List<Map<String, Object?>>? missionsMap = await _db?.rawQuery(
      '''
      SELECT 
      $userMissionsTableName.$connectedMissionIdFieldName,
      $userMissionsTableName.$missionStatusFieldName,
      $missionsTableName.$missionNameFieldName as 'missionName',
      $locationsTableName.$idFieldName as $connectedLocationIdFieldName,
      $locationsTableName.$locationNameFieldName as 'locationName' 

      FROM $userMissionsTableName

      INNER JOIN $missionsTableName 
      ON $missionsTableName.$idFieldName = $userMissionsTableName.$connectedMissionIdFieldName

      INNER JOIN $locationsTableName
      ON $locationsTableName.$idFieldName = $missionsTableName.$connectedLocationIdFieldName
      '''
    );

    Map<int, LocationEntity> locationsMap = {};
    for (var record in missionsMap!) {
      MissionEntity missionEntity = MissionEntity(
        record[connectedMissionIdFieldName] as int,
        record['missionName'] as String,
        record[missionStatusFieldName] as String
      );

      int locationId = record[connectedLocationIdFieldName] as int;
      if (locationsMap[locationId] == null) {
        LocationEntity locationEntity = LocationEntity(
          locationId,
          record['locationName'] as String,
          List.empty(growable: true)
        );
        locationsMap[locationId] = locationEntity;
      }
      locationsMap[locationId]?.addMission(missionEntity);
    }
    return locationsMap.values.toList();
  }

  Future<List<ResourceEntity>> _getUserResources(int userId) async {
    List<Map<String, Object?>>? userRes = await _db?.query(
      userResourcesTableName,
      columns: [connectedResIdFieldName, resourceAmountFieldName],
      where: "$connectedUserIdFieldName = ?",
      whereArgs: [userId]
    );    
    print("All Res : $userRes");    

    List<ResourceEntity> result = List.empty(growable: true);
    for (var resource in userRes!) {
      List<Map<String, Object?>>? res = await _db?.query(
        resourcesTableName,
        columns: [resourcesNameFieldName],
        where: "$idFieldName = ?",
        whereArgs: [resource[connectedResIdFieldName]],
        limit: 1
      );
      result.add(ResourceEntity(
        resource[connectedResIdFieldName] as int,
        res!.first[resourcesNameFieldName] as String,
        resource[resourceAmountFieldName] as int
      ));
    }
    return result;
  }
}