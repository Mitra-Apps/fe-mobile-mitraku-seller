// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ErrorResponseImpl _$$ErrorResponseImplFromJson(Map<String, dynamic> json) =>
    _$ErrorResponseImpl(
      code: json['code'] as int,
      code_detail: json['code_detail'] as String,
      message: json['message'] as String,
    );

Map<String, dynamic> _$$ErrorResponseImplToJson(_$ErrorResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'code_detail': instance.code_detail,
      'message': instance.message,
    };
