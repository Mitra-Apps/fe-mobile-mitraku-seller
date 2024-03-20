part of 'your_store_bloc.dart';

@Freezed(equal: false)
class YourStoreNotification with _$YourStoreNotification {
  factory YourStoreNotification.notifySuccess({
    required String message,
  }) = _NotificationNotifySuccess;

  factory YourStoreNotification.notifyFailed({
    required String message,
  }) = _NotificationNotifyFailed;
}
