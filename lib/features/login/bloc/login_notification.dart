part of 'login_bloc.dart';

@Freezed(equal: false)
class LoginNotification with _$LoginNotification {
  factory LoginNotification.notifySuccess({
    required String message,
  }) = _NotificationNotifySuccess;

  factory LoginNotification.notifyFailed({
    required String message,
  }) = _NotificationNotifyFailed;
}
