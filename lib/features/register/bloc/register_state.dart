part of 'register_bloc.dart';

@Freezed()
class RegisterState with _$RegisterState {
  const factory RegisterState({
    @Default(UIInitial()) UIStatus status,
    RegisterNotification? notification,
    @Default(RegisterResponse(otp: '')) RegisterResponse registerResponse,
    @Default(false) bool isBusy,
  }) = _RegisterState;
}