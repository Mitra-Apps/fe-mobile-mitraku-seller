// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_error_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterErrorResponseImpl _$$RegisterErrorResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$RegisterErrorResponseImpl(
      code: json['code'] as String,
      code_detail: json['code_detail'] as String,
      message: json['message'] as String,
    );

Map<String, dynamic> _$$RegisterErrorResponseImplToJson(
        _$RegisterErrorResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'code_detail': instance.code_detail,
      'message': instance.message,
    };
