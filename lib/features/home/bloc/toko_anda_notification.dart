part of 'toko_anda_bloc.dart';

@Freezed(equal: false)
class TokoAndaNotification with _$TokoAndaNotification {
  factory TokoAndaNotification.notifySuccess({
    required String message,
  }) = _NotificationNotifySuccess;

  factory TokoAndaNotification.notifyFailed({
    required String message,
  }) = _NotificationNotifyFailed;
}
