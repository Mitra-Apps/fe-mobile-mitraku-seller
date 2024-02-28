// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_post_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductPostRequestImpl _$$ProductPostRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductPostRequestImpl(
      storeId: json['storeId'] as String?,
      productList: (json['productList'] as List<dynamic>?)
          ?.map((e) => ProductList.fromJson(e as Map<String, dynamic>))
          .toList(),
      productTypeId: json['productTypeId'] as String?,
      productCategoryId: json['productCategoryId'] as String?,
    );

Map<String, dynamic> _$$ProductPostRequestImplToJson(
        _$ProductPostRequestImpl instance) =>
    <String, dynamic>{
      'storeId': instance.storeId,
      'productList': instance.productList,
      'productTypeId': instance.productTypeId,
      'productCategoryId': instance.productCategoryId,
    };
