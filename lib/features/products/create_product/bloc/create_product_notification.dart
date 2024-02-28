part of 'create_product_bloc.dart';

@Freezed(equal: false)
class CreateProductNotification with _$CreateProductNotification {
  factory CreateProductNotification.notifySuccess({
    required String message,
  }) = _NotificationNotifySuccess;

  factory CreateProductNotification.notifyFailed({
    required String message,
  }) = _NotificationNotifyFailed;
}
