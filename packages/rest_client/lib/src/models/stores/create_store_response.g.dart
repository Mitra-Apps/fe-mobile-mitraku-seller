// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_store_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateStoreResponseImpl _$$CreateStoreResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateStoreResponseImpl(
      code: (json['code'] as num).toInt(),
      message: json['message'] as String,
      data: json['data'] == null
          ? null
          : MyStoreResponse.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreateStoreResponseImplToJson(
        _$CreateStoreResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };
