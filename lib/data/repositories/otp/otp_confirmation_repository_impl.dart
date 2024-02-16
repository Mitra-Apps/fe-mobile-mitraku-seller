import 'package:mitraku_seller/data/repositories/otp/otp_confirmation_repository.dart';
import 'package:rest_client/rest_client.dart';
import 'package:rest_client/src/models/otpconfirmation/otp_confirmation_post.dart';

class OtpConfirmationRepositoryImpl implements OtpConfirmationRepository {
  OtpConfirmationRepositoryImpl({required OtpApiClient otpApiClient})
      : _otpApiClient = otpApiClient;

  late final OtpApiClient _otpApiClient;

  @override
  Future<LoginResponse> otpConfirmation(OtpConfirmationPost otpConfirmationPost) async {
    final response = await _otpApiClient.otpConfirmation(otpConfirmationPost.toJson());
    return response;
  }

  @override
  Future resendOtp(ResendOTPPost resendOTPPost) async {
    final response = await _otpApiClient.resendOtp(resendOTPPost.toJson());
    return response;
  }
}