// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DataLoginResponseImpl _$$DataLoginResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DataLoginResponseImpl(
      access_token: json['access_token'] as String,
      refresh_token: json['refresh_token'] as String,
    );

Map<String, dynamic> _$$DataLoginResponseImplToJson(
        _$DataLoginResponseImpl instance) =>
    <String, dynamic>{
      'access_token': instance.access_token,
      'refresh_token': instance.refresh_token,
    };
