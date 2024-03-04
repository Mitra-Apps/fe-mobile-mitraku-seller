import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_response.freezed.dart';
part 'register_response.g.dart';

/// Image dog data
@Freezed(fromJson: true)
class RegisterResponse with _$RegisterResponse {
  ///
  const factory RegisterResponse({
    required int code,
    required String message,
  }) = _RegisterResponse;

  ///
  factory RegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseFromJson(json);
}
