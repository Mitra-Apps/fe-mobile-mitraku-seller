import 'package:dio/dio.dart';
import 'package:rest_client/src/models/register/register_response.dart';
import 'package:retrofit/retrofit.dart';

part 'register_api.g.dart';

///
@RestApi()
abstract class RegisterApiClient {
  /// Constructor
  factory RegisterApiClient(Dio dio, {String baseUrl}) = _RegisterApiClient;

  @POST('/api/v1/users/register')
  Future<RegisterResponse> register(@Body() Map<String, dynamic> json);
}
