part of 'login_bloc.dart';

@Freezed()
class LoginState with _$LoginState {
  const factory LoginState({
    @Default(UIInitial()) UIStatus status,
    LoginNotification? notification,
    @Default(LoginResponse(code: 0, message: '', data: DataLoginResponse(accessToken: '',
        refreshToken: ''))) LoginResponse loginResponse,
    @Default(false) bool isBusy,
    @Default('AUTH_LOGIN_NOT_FOUND') String loginBadRequest,
    @Default('') String loginSuccess,
  }) = _LoginState;
}