import 'package:rest_client/rest_client.dart';

abstract class LoginRepository {

  Future login(LoginPost loginPost);
}
