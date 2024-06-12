// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_store_post_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateStorePostRequestImpl _$$CreateStorePostRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateStorePostRequestImpl(
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
      locationLat: (json['locationLat'] as num).toInt(),
      locationLng: (json['locationLng'] as num).toInt(),
      tags: (json['tags'] as List<dynamic>)
          .map((e) => Tag.fromJson(e as Map<String, dynamic>))
          .toList(),
      hours: (json['hours'] as List<dynamic>)
          .map((e) => CreateNewHour.fromJson(e as Map<String, dynamic>))
          .toList(),
      images: (json['images'] as List<dynamic>)
          .map((e) => ImageStore.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CreateStorePostRequestImplToJson(
        _$CreateStorePostRequestImpl instance) =>
    <String, dynamic>{
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

_$CreateNewHourImpl _$$CreateNewHourImplFromJson(Map<String, dynamic> json) =>
    _$CreateNewHourImpl(
      dayOfWeek: (json['dayOfWeek'] as num).toInt(),
      open: json['open'] as String,
      close: json['close'] as String,
      is24Hours: json['is24hours'] as bool,
      isOpen: json['isOpen'] as bool,
    );

Map<String, dynamic> _$$CreateNewHourImplToJson(_$CreateNewHourImpl instance) =>
    <String, dynamic>{
      'dayOfWeek': instance.dayOfWeek,
      'open': instance.open,
      'close': instance.close,
      'is24hours': instance.is24Hours,
      'isOpen': instance.isOpen,
    };
