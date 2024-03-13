import 'package:floor/floor.dart';

@entity
class UserEntity {
  @PrimaryKey(autoGenerate: true)
  final int? id;

  final String token;
  final String refreshToken;

  UserEntity(this.id, this.token, this.refreshToken);
}