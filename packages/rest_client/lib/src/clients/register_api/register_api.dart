import 'package:dio/dio.dart';
import 'package:rest_client/src/models/register/register_post.dart';
import 'package:rest_client/src/models/register/register_response.dart';
import 'package:retrofit/retrofit.dart';

part 'register_api.g.dart';

///
@RestApi()
abstract class RegisterApiClient {
  /// Constructor
  factory RegisterApiClient(Dio dio, {String baseUrl}) = _RegisterApiClient;

  /// Get random dog image
  @POST('/api/v1/user/register')
  Future<RegisterResponse> register(@Body() RegisterPost registerPost);
}
