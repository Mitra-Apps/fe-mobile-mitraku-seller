import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_error_response.freezed.dart';
part 'register_error_response.g.dart';

/// Image dog data
@Freezed(fromJson: true)
class RegisterErrorResponse with _$RegisterErrorResponse {
  ///
  const factory RegisterErrorResponse({
    required String code,
    required String code_detail,
    required String message,
  }) = _RegisterErrorResponse;

  ///
  factory RegisterErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterErrorResponseFromJson(json);
}
