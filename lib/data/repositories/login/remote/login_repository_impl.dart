import 'package:mitraku_seller/data/repositories/login/remote/login_repository.dart';
import 'package:rest_client/rest_client.dart';

class LoginRepositoryImpl implements LoginRepository {
  LoginRepositoryImpl({required LoginApiClient loginApiClient}): _loginApiClient = loginApiClient;

  late final LoginApiClient _loginApiClient;

  @override
  Future<LoginResponse> login(LoginPost loginPost) async {
    final response = await _loginApiClient.login(loginPost.toJson());
    return response;
  }
}
