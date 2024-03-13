// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_type_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductTypeResponseImpl _$$ProductTypeResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductTypeResponseImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      isActive: json['isActive'] as bool,
      productCategoryId: json['productCategoryId'] as String,
    );

Map<String, dynamic> _$$ProductTypeResponseImplToJson(
        _$ProductTypeResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'isActive': instance.isActive,
      'productCategoryId': instance.productCategoryId,
    };
