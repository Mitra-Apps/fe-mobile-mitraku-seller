// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_product_category_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DataProductCategoryResponseImpl _$$DataProductCategoryResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DataProductCategoryResponseImpl(
      productCategory: (json['productCategory'] as List<dynamic>?)
          ?.map((e) =>
              ProductCategoryResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      uom: (json['uom'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$DataProductCategoryResponseImplToJson(
        _$DataProductCategoryResponseImpl instance) =>
    <String, dynamic>{
      'productCategory': instance.productCategory,
      'uom': instance.uom,
    };
