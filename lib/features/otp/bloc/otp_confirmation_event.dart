part of 'otp_confirmation_bloc.dart';

@Freezed()
class OtpConfirmationEvent with _$OtpConfirmationEvent {
  const factory OtpConfirmationEvent.loaded() = _Loaded;
  const factory OtpConfirmationEvent.otpRequested(OtpConfirmationPost
  otpConfirmationPost) = _OtpConfrimationRequested;
  const factory OtpConfirmationEvent.resendOtpRequested(ResendOTPPost
      resendOTPPost) = _ResendOtpRequested;
}
