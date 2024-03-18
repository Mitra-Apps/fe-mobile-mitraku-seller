part of 'other_bloc.dart';

@Freezed()
class OtherState with _$OtherState {
  const factory OtherState({
    @Default(UIInitial()) UIStatus status,
    @Default(LogoutResponse(code: 0, message: ''))
    LogoutResponse logoutResponse,
    @Default('AUTH_LOGIN_NOT_FOUND') String loginBadRequest,
  }) = _OtherState;
}
