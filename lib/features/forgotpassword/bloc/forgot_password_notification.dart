part of 'forgot_password_bloc.dart';

@Freezed(equal: false)
class ForgotPasswordNotification with _$ForgotPasswordNotification {
  factory ForgotPasswordNotification.notifySuccess({
    required String message,
  }) = _NotificationNotifySuccess;

  factory ForgotPasswordNotification.notifyFailed({
    required String message,
  }) = _NotificationNotifyFailed;
}
