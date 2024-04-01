// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_store_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MyStoreResponseImpl _$$MyStoreResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$MyStoreResponseImpl(
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

Map<String, dynamic> _$$MyStoreResponseImplToJson(
        _$MyStoreResponseImpl instance) =>
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

_$HourImpl _$$HourImplFromJson(Map<String, dynamic> json) => _$HourImpl(
      id: json['id'] as String,
      storeId: json['storeId'] as String,
      dayOfWeek: json['dayOfWeek'] as int,
      open: json['open'] as String,
      close: json['close'] as String,
      is24Hours: json['is24hours'] as bool,
      isOpen: json['isOpen'] as bool,
    );

Map<String, dynamic> _$$HourImplToJson(_$HourImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'storeId': instance.storeId,
      'dayOfWeek': instance.dayOfWeek,
      'open': instance.open,
      'close': instance.close,
      'is24hours': instance.is24Hours,
      'isOpen': instance.isOpen,
    };

_$ImageStoreImpl _$$ImageStoreImplFromJson(Map<String, dynamic> json) =>
    _$ImageStoreImpl(
      imageType: json['imageType'] as String,
      imageBase64: json['imageBase64'] as String,
      id: json['id'] as String?,
      storeId: json['storeId'] as String?,
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$$ImageStoreImplToJson(_$ImageStoreImpl instance) {
  final val = <String, dynamic>{
    'imageType': instance.imageType,
    'imageBase64': instance.imageBase64,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('storeId', instance.storeId);
  writeNotNull('imageUrl', instance.imageUrl);
  return val;
}

_$TagImpl _$$TagImplFromJson(Map<String, dynamic> json) => _$TagImpl(
      id: json['id'] as String,
      tagName: json['tagName'] as String,
    );

Map<String, dynamic> _$$TagImplToJson(_$TagImpl instance) => <String, dynamic>{
      'id': instance.id,
      'tagName': instance.tagName,
    };
