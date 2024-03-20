import 'package:dio/dio.dart';
import 'package:mitraku_seller/data/repositories/auth/remote/auth_repository.dart';
import 'package:rest_client/rest_client.dart';

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
  Future<LogoutResponse> logout(LogoutPost logoutPost) async {
    final response = await _authApiClient.logout(logoutPost.toJson());
    return response;
  }
}
