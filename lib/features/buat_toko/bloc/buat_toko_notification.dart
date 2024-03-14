part of 'buat_toko_bloc.dart';

@Freezed(equal: false)
class BuatTokoNotification with _$BuatTokoNotification {
  factory BuatTokoNotification.notifySuccess({
    required String message,
  }) = _NotificationNotifySuccess;

  factory BuatTokoNotification.notifyFailed({
    required String message,
  }) = _NotificationNotifyFailed;
}
