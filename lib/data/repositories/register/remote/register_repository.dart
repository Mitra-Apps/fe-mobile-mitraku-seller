import 'package:rest_client/rest_client.dart';

abstract class RegisterRepository {

  Future register(RegisterPost registerPost);
}
