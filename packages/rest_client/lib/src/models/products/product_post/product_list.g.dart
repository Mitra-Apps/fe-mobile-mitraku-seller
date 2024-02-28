// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductListImpl _$$ProductListImplFromJson(Map<String, dynamic> json) =>
    _$ProductListImpl(
      id: json['id'] as String?,
      storeId: json['storeId'] as String?,
      name: json['name'] as String?,
      saleStatus: json['saleStatus'] as bool?,
      price: json['price'] as int?,
      stock: json['stock'] as String?,
      uomId: json['uomId'] as String?,
    );

Map<String, dynamic> _$$ProductListImplToJson(_$ProductListImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'storeId': instance.storeId,
      'name': instance.name,
      'saleStatus': instance.saleStatus,
      'price': instance.price,
      'stock': instance.stock,
      'uomId': instance.uomId,
    };
