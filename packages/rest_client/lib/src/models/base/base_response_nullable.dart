import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_response_nullable.freezed.dart';
part 'base_response_nullable.g.dart';

///
@Freezed(genericArgumentFactories: true, fromJson: true)
class BaseResponseNullable<T> with _$BaseResponseNullable<T> {
  ///
  const factory BaseResponseNullable({
    required dynamic code,
    required T? data,
    required String message,
  }) = _BaseResponseNullable<T>;

  ///
  factory BaseResponseNullable.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) toJsonT,
  ) =>
      _$BaseResponseNullableFromJson<T>(
        json,
        toJsonT,
      );
}
