part of 'register_bloc.dart';

@Freezed()
class RegisterState with _$RegisterState {
  const factory RegisterState({
    @Default(UIInitial()) UIStatus status,
    RegisterNotification? notification,
    @Default(RegisterResponse(code: 0, message: '')) RegisterResponse registerResponse,
    @Default(false) bool isBusy,
    @Default('') String registerBadRequest,
    @Default('') String registerSuccess,
  }) = _RegisterState;
}