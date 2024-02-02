import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_otp_response.freezed.dart';
part 'register_otp_response.g.dart';

/// Image dog data
@Freezed(fromJson: true)
class RegisterOTPResponse with _$RegisterOTPResponse {
  ///
  const factory RegisterOTPResponse({
    required String otp,
  }) = _RegisterOTPResponse;

  ///
  factory RegisterOTPResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterOTPResponseFromJson(json);
}
