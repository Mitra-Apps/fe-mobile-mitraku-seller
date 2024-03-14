part of 'forgot_password_bloc.dart';

@Freezed()
class ForgotPasswordState with _$ForgotPasswordState {
  const factory ForgotPasswordState({
    @Default(UIInitial()) UIStatus status,
    ForgotPasswordNotification? notification,
    @Default(LoginResponse(code: 0, message: '',data: DataLoginResponse(accessToken: '',
        refreshToken: ''))) LoginResponse loginResponse,
    @Default(false) bool isBusy,
    @Default('RECORD_NOT_FOUND') String forgotPassBadRequest,
    @Default('') String forgotPassSuccess,
    @Default(ResendOTPResponse(code: 0, message: '')) ResendOTPResponse resendOTPResponse,
  }) = _ForgotPasswordState;
}