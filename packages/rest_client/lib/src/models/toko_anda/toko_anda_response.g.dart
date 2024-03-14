// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'toko_anda_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TokoAndaResponseImpl _$$TokoAndaResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$TokoAndaResponseImpl(
      code: json['code'] as int,
      message: json['message'] as String,
      data: json['data'] == null
          ? null
          : TokoAndaData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TokoAndaResponseImplToJson(
        _$TokoAndaResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

_$TokoAndaDataImpl _$$TokoAndaDataImplFromJson(Map<String, dynamic> json) =>
    _$TokoAndaDataImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      storeName: json['storeName'] as String,
      storeDescription: json['storeDescription'] as String,
      address: json['address'] as String,
      city: json['city'] as String,
      state: json['state'] as String,
      zipCode: json['zipCode'] as String,
      phone: json['phone'] as String,
      email: json['email'] as String,
      website: json['website'] as String,
      status: json['status'] as String,
      isActivev: json['isActivev'] as bool,
      locationLat: json['locationLat'] as int,
      locationLng: json['locationLng'] as int,
      tags: (json['tags'] as List<dynamic>)
          .map((e) => TokoAndaTag.fromJson(e as Map<String, dynamic>))
          .toList(),
      hours: (json['hours'] as List<dynamic>)
          .map((e) => TokoAndaHour.fromJson(e as Map<String, dynamic>))
          .toList(),
      images: (json['images'] as List<dynamic>)
          .map((e) => TokoAndaImage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TokoAndaDataImplToJson(_$TokoAndaDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'storeName': instance.storeName,
      'storeDescription': instance.storeDescription,
      'address': instance.address,
      'city': instance.city,
      'state': instance.state,
      'zipCode': instance.zipCode,
      'phone': instance.phone,
      'email': instance.email,
      'website': instance.website,
      'status': instance.status,
      'isActivev': instance.isActivev,
      'locationLat': instance.locationLat,
      'locationLng': instance.locationLng,
      'tags': instance.tags,
      'hours': instance.hours,
      'images': instance.images,
    };

_$TokoAndaTagImpl _$$TokoAndaTagImplFromJson(Map<String, dynamic> json) =>
    _$TokoAndaTagImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$$TokoAndaTagImplToJson(_$TokoAndaTagImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
    };

_$TokoAndaHourImpl _$$TokoAndaHourImplFromJson(Map<String, dynamic> json) =>
    _$TokoAndaHourImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$$TokoAndaHourImplToJson(_$TokoAndaHourImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
    };

_$TokoAndaImageImpl _$$TokoAndaImageImplFromJson(Map<String, dynamic> json) =>
    _$TokoAndaImageImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$$TokoAndaImageImplToJson(_$TokoAndaImageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
    };
