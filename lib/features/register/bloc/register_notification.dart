part of 'register_bloc.dart';

@Freezed(equal: false)
class RegisterNotification with _$RegisterNotification {
  factory RegisterNotification.notifySuccess({
    required String message,
  }) = _NotificationNotifySuccess;

  factory RegisterNotification.notifyFailed({
    required String message,
  }) = _NotificationNotifyFailed;
}
