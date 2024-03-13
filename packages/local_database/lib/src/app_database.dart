import 'dart:async';
import 'package:floor/floor.dart';
import 'package:local_database/local_database.dart';
import 'package:local_database/src/dao/user_dao.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

part 'app_database.g.dart';

@Database(version: 2, entities: [DogImageEntity, UserEntity,])
abstract class AppDatabase extends FloorDatabase {
  DogImageDao get dogImageDao;
  UserDao get userDao;
}
