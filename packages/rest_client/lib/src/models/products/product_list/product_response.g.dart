// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductResponseImpl _$$ProductResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductResponseImpl(
      id: json['id'] as String,
      storeId: json['storeId'] as String,
      name: json['name'] as String,
      saleStatus: json['saleStatus'] as bool,
      price: json['price'] as int,
      stock: json['stock'] as String,
      uom: json['uom'] as String,
      productTypeId: json['productTypeId'] as String,
      productTypeName: json['productTypeName'] as String,
      productCategoryId: json['productCategoryId'] as String,
      productCategoryName: json['productCategoryName'] as String,
      images: (json['images'] as List<dynamic>)
          .map((e) => ImageProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProductResponseImplToJson(
        _$ProductResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'storeId': instance.storeId,
      'name': instance.name,
      'saleStatus': instance.saleStatus,
      'price': instance.price,
      'stock': instance.stock,
      'uom': instance.uom,
      'productTypeId': instance.productTypeId,
      'productTypeName': instance.productTypeName,
      'productCategoryId': instance.productCategoryId,
      'productCategoryName': instance.productCategoryName,
      'images': instance.images,
    };

_$ImageProductImpl _$$ImageProductImplFromJson(Map<String, dynamic> json) =>
    _$ImageProductImpl(
      id: json['id'] as String,
      imageId: json['imageId'] as String,
      imageBase64Str: json['imageBase64Str'] as String,
      imageUrl: json['imageUrl'] as String,
    );

Map<String, dynamic> _$$ImageProductImplToJson(_$ImageProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imageId': instance.imageId,
      'imageBase64Str': instance.imageBase64Str,
      'imageUrl': instance.imageUrl,
    };
