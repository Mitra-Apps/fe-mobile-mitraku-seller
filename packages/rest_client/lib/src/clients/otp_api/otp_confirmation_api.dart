import 'package:dio/dio.dart';
import 'package:rest_client/rest_client.dart';
import 'package:retrofit/retrofit.dart';

part 'otp_confirmation_api.g.dart';

///
@RestApi()
abstract class OtpApiClient {
  /// Constructor
  factory OtpApiClient(Dio dio, {String baseUrl}) = _OtpApiClient;

  @POST('/api/v1/users/verify-token')
  Future<LoginResponse> otpConfirmation(@Body() Map<String, dynamic> json);

  @POST('/api/v1/users/resend-otp')
  Future<ResendOTPResponse> resendOtp(@Body() Map<String, dynamic> json);
}
