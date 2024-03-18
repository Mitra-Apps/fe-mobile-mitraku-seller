// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DataLoginResponseImpl _$$DataLoginResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DataLoginResponseImpl(
      accessToken: json['access_token'] as String,
      refreshToken: json['refresh_token'] as String,
    );

Map<String, dynamic> _$$DataLoginResponseImplToJson(
        _$DataLoginResponseImpl instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
    };
