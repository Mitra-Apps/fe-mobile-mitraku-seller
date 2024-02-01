import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_login_response.freezed.dart';
part 'data_login_response.g.dart';

@Freezed(fromJson: true)
class DataLoginResponse with _$DataLoginResponse {
  ///
  const factory DataLoginResponse({
    required String access_token,
    required String refresh_token
  }) = _DataLoginResponse;

  ///
  factory DataLoginResponse.fromJson(Map<String, dynamic> json) =>
      _$DataLoginResponseFromJson(json);
}
