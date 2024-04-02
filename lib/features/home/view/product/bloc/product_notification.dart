part of 'product_bloc.dart';


@freezed
class ProductNotification with _$ProductNotification {
  factory ProductNotification.notifySuccess({
    required String message,
  }) = _NotificationNotifySuccess;

  factory ProductNotification.notifyFailed({
    required String message,
  }) = _NotificationNotifyFailed;
}
