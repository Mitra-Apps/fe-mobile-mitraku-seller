import 'package:dio/dio.dart';
import 'package:rest_client/rest_client.dart';
import 'package:retrofit/retrofit.dart';

part 'forgot_password_api.g.dart';

///
@RestApi()
abstract class ForgotPasswordApiClient {
  /// Constructor
  factory ForgotPasswordApiClient(Dio dio, {String baseUrl}) = _ForgotPasswordApiClient;

  @POST('/api/v1/users/change-password')
  Future<LoginResponse> forgotPassword(@Body() Map<String, dynamic> json);

  @POST('/api/v1/users/resend-otp')
  Future<ResendOTPResponse> reqOtp(@Body() Map<String, dynamic> json);
}
