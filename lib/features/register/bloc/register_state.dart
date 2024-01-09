part of 'register_bloc.dart';

@Freezed()
class RegisterState with _$RegisterState {
  const factory RegisterState({
    @Default(UIInitial()) UIStatus status,
    RegisterNotification? notification,
    @Default(RegisterResponse(message: '', success: false)) RegisterResponse registerResponse,
    @Default(false) bool isBusy,
  }) = _RegisterState;
}