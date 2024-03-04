// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgot_password_post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ForgotPasswordPostImpl _$$ForgotPasswordPostImplFromJson(
        Map<String, dynamic> json) =>
    _$ForgotPasswordPostImpl(
      email: json['email'] as String,
      password: json['password'] as String,
      otp_code: json['otp_code'] as int,
    );

Map<String, dynamic> _$$ForgotPasswordPostImplToJson(
        _$ForgotPasswordPostImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'otp_code': instance.otp_code,
    };
