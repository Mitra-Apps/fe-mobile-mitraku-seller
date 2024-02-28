import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_list.freezed.dart';
part 'product_list.g.dart';

/// Product list model
@Freezed(fromJson: true)
class ProductList with _$ProductList {
  ///
  const factory ProductList({
    String? id,
    String? storeId,
    String? name,
    bool? saleStatus,
    int? price,
    String? stock,
    String? uomId,
  }) = _ProductList;

  ///
  factory ProductList.fromJson(Map<String, dynamic> json) => _$ProductListFromJson(json);
}
