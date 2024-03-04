part of 'otp_confirmation_bloc.dart';

@Freezed()
class OtpConfirmationState with _$OtpConfirmationState {
  const factory OtpConfirmationState({
    @Default(UIInitial()) UIStatus status,
    OtpConfirmationNotification? notification,
    @Default(LoginResponse(code: 0, message: '', data: DataLoginResponse(access_token: '',
        refresh_token: ''))) LoginResponse loginResponse,
    @Default(false) bool isBusy,
    @Default('AUTH_OTP_INVALID') String otpBadRequest,
    @Default('') String otpSuccess,
    @Default(ResendOTPResponse(code: 0, message: '')) ResendOTPResponse resendOTPResponse,
  }) = _OtpConfirmationState;
}