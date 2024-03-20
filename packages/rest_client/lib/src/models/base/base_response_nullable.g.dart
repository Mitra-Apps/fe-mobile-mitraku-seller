// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_nullable.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseNullableImpl<T> _$$BaseResponseNullableImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$BaseResponseNullableImpl<T>(
      code: json['code'],
      data: _$nullableGenericFromJson(json['data'], fromJsonT),
      message: json['message'] as String,
    );

Map<String, dynamic> _$$BaseResponseNullableImplToJson<T>(
  _$BaseResponseNullableImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'code': instance.code,
      'data': _$nullableGenericToJson(instance.data, toJsonT),
      'message': instance.message,
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);
