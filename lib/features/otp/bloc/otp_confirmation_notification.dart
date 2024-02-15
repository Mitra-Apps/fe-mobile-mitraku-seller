part of 'otp_confirmation_bloc.dart';

@Freezed(equal: false)
class OtpConfirmationNotification with _$OtpConfirmationNotification {
  factory OtpConfirmationNotification.notifySuccess({
    required String message,
  }) = _NotificationNotifySuccess;

  factory OtpConfirmationNotification.notifyFailed({
    required String message,
  }) = _NotificationNotifyFailed;
}
