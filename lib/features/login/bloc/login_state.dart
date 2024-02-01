part of 'login_bloc.dart';

@Freezed()
class LoginState with _$LoginState {
  const factory LoginState({
    @Default(UIInitial()) UIStatus status,
    LoginNotification? notification,
    @Default(LoginResponse(data: DataLoginResponse(access_token: '',
        refresh_token: ''))) LoginResponse loginResponse,
    @Default(false) bool isBusy,
  }) = _LoginState;
}