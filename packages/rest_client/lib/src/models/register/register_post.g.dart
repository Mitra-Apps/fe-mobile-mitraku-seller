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
      address: json['address'] as String,
      role_id: json['role_id'] as String,
    );

Map<String, dynamic> _$$RegisterPostImplToJson(_$RegisterPostImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'name': instance.name,
      'phone_number': instance.phone_number,
      'address': instance.address,
      'role_id': instance.role_id,
    };
