// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductListImpl _$$ProductListImplFromJson(Map<String, dynamic> json) =>
    _$ProductListImpl(
      name: json['name'] as String?,
      saleStatus: json['saleStatus'] as bool? ?? false,
      price: json['price'] as int?,
      stock: json['stock'] as String?,
      uom: json['uom'] as String?,
      productTypeId: json['productTypeId'] as String?,
    );

Map<String, dynamic> _$$ProductListImplToJson(_$ProductListImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'saleStatus': instance.saleStatus,
      'price': instance.price,
      'stock': instance.stock,
      'uom': instance.uom,
      'productTypeId': instance.productTypeId,
    };
