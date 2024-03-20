import 'package:freezed_annotation/freezed_annotation.dart';

part 'logout_response.freezed.dart';
part 'logout_response.g.dart';

@Freezed(fromJson: true)
class LogoutResponse with _$LogoutResponse {
  ///
  const factory LogoutResponse({
    required int code,
    required String message,
  }) = _LogoutResponse;

  ///
  factory LogoutResponse.fromJson(Map<String, dynamic> json) =>
      _$LogoutResponseFromJson(json);
}
