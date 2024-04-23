import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_response.freezed.dart';
part 'base_response.g.dart';

///
@Freezed(genericArgumentFactories: true)
class BaseResponse<T> with _$BaseResponse<T> {
  ///
  const factory BaseResponse({
    required dynamic code,
    required T? data,
    required String? message,
  }) = _BaseResponse<T>;

  ///
  factory BaseResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) toJsonT,
  ) =>
      _$BaseResponseFromJson<T>(
        json,
        toJsonT,
      );
}
