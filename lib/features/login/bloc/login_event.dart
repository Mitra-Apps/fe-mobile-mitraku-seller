part of 'login_bloc.dart';

@Freezed()
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.loaded() = _Loaded;
  const factory LoginEvent.loginRequested(LoginPost loginPost) = _LoginRequested;
}
