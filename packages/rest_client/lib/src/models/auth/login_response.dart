import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_client/src/models/auth/data_login_response.dart';

part 'login_response.freezed.dart';
part 'login_response.g.dart';

@Freezed(fromJson: true)
class LoginResponse with _$LoginResponse {
  ///
  const factory LoginResponse({
    required int code,
    required String message,
    required DataLoginResponse data,
  }) = _LoginResponse;

  ///
  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}
