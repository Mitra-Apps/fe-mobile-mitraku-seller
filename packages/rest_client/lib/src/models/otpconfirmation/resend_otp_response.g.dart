// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resend_otp_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResendOTPResponseImpl _$$ResendOTPResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ResendOTPResponseImpl(
      code: (json['code'] as num).toInt(),
      message: json['message'] as String,
    );

Map<String, dynamic> _$$ResendOTPResponseImplToJson(
        _$ResendOTPResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
    };
