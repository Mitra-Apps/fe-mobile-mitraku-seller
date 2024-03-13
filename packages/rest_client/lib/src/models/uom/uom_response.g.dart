// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'uom_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UomResponseImpl _$$UomResponseImplFromJson(Map<String, dynamic> json) =>
    _$UomResponseImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      symbol: json['symbol'] as String,
      isActive: json['isActive'] as bool,
    );

Map<String, dynamic> _$$UomResponseImplToJson(_$UomResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'symbol': instance.symbol,
      'isActive': instance.isActive,
    };
