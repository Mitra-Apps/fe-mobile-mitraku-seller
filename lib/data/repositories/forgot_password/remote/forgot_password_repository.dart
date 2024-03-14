import 'package:rest_client/rest_client.dart';

abstract class ForgotPasswordRepository {

  Future forgotPassword(ForgotPasswordPost forgotPasswordPost);
  Future reqOtp(ResendOTPPost resendOTPPost);
}
