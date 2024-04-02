import 'package:rest_client/rest_client.dart';

abstract class AuthRepository {

  Future login(LoginPost loginPost);

  Future logout();
}
