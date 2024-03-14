// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buat_toko_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BuatTokoResponseImpl _$$BuatTokoResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$BuatTokoResponseImpl(
      code: json['code'] as int,
      message: json['message'] as String,
      data: json['data'] == null
          ? null
          : TokoAndaData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BuatTokoResponseImplToJson(
        _$BuatTokoResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };
