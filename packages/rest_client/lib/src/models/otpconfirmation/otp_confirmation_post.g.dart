// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_confirmation_post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OtpConfirmationPostImpl _$$OtpConfirmationPostImplFromJson(
        Map<String, dynamic> json) =>
    _$OtpConfirmationPostImpl(
      email: json['email'] as String,
      otp_code: json['otp_code'] as int,
    );

Map<String, dynamic> _$$OtpConfirmationPostImplToJson(
        _$OtpConfirmationPostImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'otp_code': instance.otp_code,
    };
