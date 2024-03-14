import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_list.freezed.dart';
part 'product_list.g.dart';

/// Product list model
@freezed
class ProductList with _$ProductList {
  ///
  const factory ProductList({
    String? name,
    @Default(true) bool? saleStatus,
    int? price,
    String? stock,
    String? uomId,
    String? productTypeId,
  }) = _ProductList;

  ///
  factory ProductList.fromJson(Map<String, dynamic> json) =>
   _$ProductListFromJson(json);
}
