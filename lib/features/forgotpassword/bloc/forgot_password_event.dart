part of 'forgot_password_bloc.dart';

@Freezed()
class ForgotPasswordEvent with _$ForgotPasswordEvent {
  const factory ForgotPasswordEvent.loaded() = _Loaded;
  const factory ForgotPasswordEvent.forgotPassRequested(
      ForgotPasswordPost forgotPasswordPost) = _ForgotPassRequested;
  const factory ForgotPasswordEvent.reqOtp(
      ResendOTPPost resendOTPPost) = _ReqOtpRequested;
}
