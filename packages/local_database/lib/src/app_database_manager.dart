import 'dart:async';

import 'package:floor/floor.dart';
import 'package:local_database/local_database.dart';
import 'package:local_database/src/dao/user_dao.dart';

import 'app_database.dart';

class AppDatabaseManager {
  static final AppDatabaseManager _singleton = AppDatabaseManager._internal();

  factory AppDatabaseManager() {
    return _singleton;
  }

  AppDatabaseManager._internal();

  late final AppDatabase _database;

  ///DAO
  DogImageDao? _dogImageDao;
  UserDao? _userDao;

  Future createDatabase() async {
    _database = await $FloorAppDatabase
        .databaseBuilder('app_database.db')
        .addMigrations(
      [
        _migration1to2,
      ],
    ).build();
    initDao();
  }

  void initDao() {
    _dogImageDao = _database.dogImageDao;
    _userDao = _database.userDao;
  }

  FutureOr<DogImageDao> get dogImageDao async {
    if (_dogImageDao == null) {
      await createDatabase();
    }
    return _dogImageDao!;
  }

  FutureOr<UserDao> get userDao async {
    if (_userDao == null) {
      await createDatabase();
    }
    return _userDao!;
  }

  // Migration (add database migration)

  // After release app to Store, whenever add entity, change entity ..., must write migraion
  // Step 1. Level up database version in  app_database.dart (example 1 -> 2)
  //
  // Step 2. Write migration (example migration1to2)
  static Map<int, String> migrationScripts2 = {
    1:'''CREATE TABLE UserEntity(id INTEGER PRIMARY KEY,token TEXT)''',
  };

   final _migration1to2 = Migration(1, 2, (database) async {
     await database.execute(migrationScripts2[1]!);
   });

  static Map<int, String> migrationScripts3 = {
    1:'''ALTER TABLE UserEntity(id INTEGER PRIMARY KEY,token TEXT)''',
  };

  final _migration2to3 = Migration(2, 3, (database) async {
    await database.execute(migrationScripts2[1]!);
  });
  //
  // Step 3. Run command "flutter clean && flutter pub get && flutter pub run build_runner build --delete-conflicting-outputs"

}
