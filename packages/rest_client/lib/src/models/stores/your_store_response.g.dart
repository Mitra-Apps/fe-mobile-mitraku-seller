// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'your_store_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$YourStoreResponseImpl _$$YourStoreResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$YourStoreResponseImpl(
      code: json['code'] as int,
      message: json['message'] as String,
      data: json['data'] == null
          ? null
          : MyStoreResponse.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$YourStoreResponseImplToJson(
        _$YourStoreResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };
