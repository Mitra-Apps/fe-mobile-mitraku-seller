import 'package:floor/floor.dart';
import 'package:local_database/local_database.dart';

@dao
abstract class UserDao {
  @Query('SELECT * FROM UserEntity')
  Future<List<UserEntity>> getUser();

  @insert
  Future<void> insertUser(UserEntity userEntity);

  @delete
  Future<void> deleteUser(UserEntity userEntity);
}
