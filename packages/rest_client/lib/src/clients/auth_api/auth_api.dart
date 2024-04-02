import 'package:dio/dio.dart';
import 'package:rest_client/src/models/auth/login_response.dart';
import 'package:rest_client/src/models/auth/logout_response.dart';
import 'package:rest_client/src/models/models.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_api.g.dart';

///
@RestApi()
abstract class AuthApiClient {
  /// Constructor
  factory AuthApiClient(Dio dio, {String baseUrl}) = _AuthApiClient;

  ///
  @POST('/api/v1/users/login')
  Future<LoginResponse> login(@Body() Map<String, dynamic> json);

  @POST('/api/v1/users/logout')
  Future<LogoutResponse> logout({@Header('Authorization') required String token,
    @Header('Content-Type') String content = 'application/json',});
}
