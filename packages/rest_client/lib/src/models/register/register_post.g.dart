// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterPostImpl _$$RegisterPostImplFromJson(Map<String, dynamic> json) =>
    _$RegisterPostImpl(
      email: json['email'] as String,
      password: json['password'] as String,
      name: json['name'] as String,
      phone_number: json['phone_number'] as String,
      role_id:
          (json['role_id'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$RegisterPostImplToJson(_$RegisterPostImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'name': instance.name,
      'phone_number': instance.phone_number,
      'role_id': instance.role_id,
    };
