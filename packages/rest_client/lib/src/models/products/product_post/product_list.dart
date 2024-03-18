// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_list.freezed.dart';
part 'product_list.g.dart';

/// Product list model
@freezed
class ProductList with _$ProductList {
  ///
  const factory ProductList({
    @JsonKey(name: 'name')
    String? name,
    @JsonKey(name: 'saleStatus')
    @Default(false) bool? saleStatus,
    @JsonKey(name: 'price')
    int? price,
    @JsonKey(name: 'stock')
    String? stock,
    @JsonKey(name: 'uom')
    String? uom,
    @JsonKey(name: 'productTypeId')
    String? productTypeId,
  }) = _ProductList;

  ///
  factory ProductList.fromJson(Map<String, dynamic> json) =>
   _$ProductListFromJson(json);
}
