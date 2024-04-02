import 'package:mitraku_seller/data/repositories/auth/remote/auth_repository.dart';
import 'package:rest_client/rest_client.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl({required AuthApiClient authApiClient})
      : _authApiClient = authApiClient;

  late final AuthApiClient _authApiClient;

  @override
  Future<LoginResponse> login(LoginPost loginPost) async {
    final response = await _authApiClient.login(loginPost.toJson());
    return response;
  }

  @override
  Future<LogoutResponse> logout() async {
    final prefs = await SharedPreferences.getInstance();
    final String token = prefs.getString('access_token') ?? '';

    final response = await _authApiClient.logout(token: 'Bearer $token');
    return response;
  }
}
