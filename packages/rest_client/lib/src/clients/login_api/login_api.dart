import 'package:dio/dio.dart';
import 'package:rest_client/src/models/login/login_response.dart';
import 'package:retrofit/retrofit.dart';

part 'login_api.g.dart';

///
@RestApi()
abstract class LoginApiClient {
  /// Constructor
  factory LoginApiClient(Dio dio, {String baseUrl}) = _LoginApiClient;

  ///
  @POST('/api/v1/users/login')
  Future<LoginResponse> login(@Body() Map<String, dynamic> json);
}
