import 'package:mitraku_seller/data/repositories/forgot_password/remote/forgot_password_repository.dart';
import 'package:rest_client/rest_client.dart';

class ForgotPasswordRepositoryImpl implements ForgotPasswordRepository {
  ForgotPasswordRepositoryImpl({required ForgotPasswordApiClient forgotPasswordApiClient})
      : _forgotPasswordApiClient = forgotPasswordApiClient;

  late final ForgotPasswordApiClient _forgotPasswordApiClient;

  @override
  Future<LoginResponse> forgotPassword(ForgotPasswordPost forgotPasswordPost ) async {
    final response = await _forgotPasswordApiClient.forgotPassword(
        forgotPasswordPost.toJson(),);
    return response;
  }

  @override
  Future<ResendOTPResponse> reqOtp(ResendOTPPost resendOTPPost) async {
    final response = await _forgotPasswordApiClient.reqOtp(
        resendOTPPost.toJson(),);
    return response;
  }
}
