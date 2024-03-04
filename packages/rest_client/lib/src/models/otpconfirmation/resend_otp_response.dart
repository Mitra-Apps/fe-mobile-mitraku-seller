import 'package:freezed_annotation/freezed_annotation.dart';

part 'resend_otp_response.freezed.dart';
part 'resend_otp_response.g.dart';

@Freezed(fromJson: true)
class ResendOTPResponse with _$ResendOTPResponse {
  ///
  const factory ResendOTPResponse({
    required int code,
    required String message,
  }) = _ResendOTPResponse;

  ///
  factory ResendOTPResponse.fromJson(Map<String, dynamic> json) =>
      _$ResendOTPResponseFromJson(json);
}
