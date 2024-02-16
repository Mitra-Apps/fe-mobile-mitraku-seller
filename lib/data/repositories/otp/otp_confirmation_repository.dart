import 'package:rest_client/rest_client.dart';

abstract class OtpConfirmationRepository {

  Future otpConfirmation(OtpConfirmationPost otpConfirmationPost);
  Future resendOtp(ResendOTPPost resendOTPPost);
}
