import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_response.freezed.dart';
part 'error_response.g.dart';

/// Image dog data
@Freezed(fromJson: true)
class ErrorResponse with _$ErrorResponse {
  ///
  const factory ErrorResponse({
    required int code,
    required String code_detail,
    required String message,
  }) = _ErrorResponse;

  ///
  factory ErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$ErrorResponseFromJson(json);
}
