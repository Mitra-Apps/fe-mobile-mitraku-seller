// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_store_put_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EditStorePutRequestImpl _$$EditStorePutRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$EditStorePutRequestImpl(
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
      isActive: json['isActive'] as bool,
      locationLat: json['locationLat'] as int,
      locationLng: json['locationLng'] as int,
      tags: (json['tags'] as List<dynamic>)
          .map((e) => Tag.fromJson(e as Map<String, dynamic>))
          .toList(),
      hours: (json['hours'] as List<dynamic>)
          .map((e) => Hour.fromJson(e as Map<String, dynamic>))
          .toList(),
      images: (json['images'] as List<dynamic>)
          .map((e) => ImageStore.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$EditStorePutRequestImplToJson(
        _$EditStorePutRequestImpl instance) =>
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
      'isActive': instance.isActive,
      'locationLat': instance.locationLat,
      'locationLng': instance.locationLng,
      'tags': instance.tags,
      'hours': instance.hours,
      'images': instance.images,
    };
