part of 'toko_anda_bloc.dart';

@Freezed()
class TokoAndaState with _$TokoAndaState {
  const factory TokoAndaState({
    @Default(UIInitial()) UIStatus status,
    TokoAndaNotification? notification,
    @Default(LoginResponse(
        data: DataLoginResponse(access_token: '', refresh_token: '')))
    LoginResponse loginResponse,
    @Default(false) bool isBusy,
    @Default('AUTH_LOGIN_NOT_FOUND') String loginBadRequest,
    @Default('') String loginSuccess,
  }) = _TokoAndaState;
}
