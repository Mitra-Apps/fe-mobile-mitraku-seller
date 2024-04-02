import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_login_response.freezed.dart';
part 'data_login_response.g.dart';

@freezed
class DataLoginResponse with _$DataLoginResponse {
  const factory DataLoginResponse({
    @JsonKey(name: "access_token") required String accessToken,
    @JsonKey(name: "refresh_token") required String refreshToken,
  }) = _DataLoginResponse;

  factory DataLoginResponse.fromJson(Map<String, dynamic> json) =>
      _$DataLoginResponseFromJson(json);
}
