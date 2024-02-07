import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_client/src/models/register/register_otp_response.dart';

part 'register_response.freezed.dart';
part 'register_response.g.dart';

/// Image dog data
@Freezed(fromJson: true)
class RegisterResponse with _$RegisterResponse {
  ///
  const factory RegisterResponse({
    required RegisterOTPResponse data,
  }) = _RegisterResponse;

  ///
  factory RegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseFromJson(json);
}
