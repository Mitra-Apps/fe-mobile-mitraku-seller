// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_response.freezed.dart';
part 'product_response.g.dart';

///
@freezed
class ProductResponse with _$ProductResponse {
  ///
  const factory ProductResponse({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'storeId') required String storeId,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'saleStatus') required bool saleStatus,
    @JsonKey(name: 'price') required int price,
    @JsonKey(name: 'stock') required String stock,
    @JsonKey(name: 'uom') required String uom,
    @JsonKey(name: 'productTypeId') required String productTypeId,
    @JsonKey(name: 'productTypeName') required String productTypeName,
    @JsonKey(name: 'productCategoryId') required String productCategoryId,
    @JsonKey(name: 'productCategoryName') required String productCategoryName,
    @JsonKey(name: 'images') required List<ImageProduct> images,
  }) = _ProductResponse;

  ///
  factory ProductResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductResponseFromJson(json);
}

///
@freezed
class ImageProduct with _$ImageProduct {
  ///
  const factory ImageProduct({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'imageId') required String imageId,
    @JsonKey(name: 'imageBase64Str') required String imageBase64Str,
    @JsonKey(name: 'imageUrl') required String imageUrl,
  }) = _ImageProduct;

  ///
  factory ImageProduct.fromJson(Map<String, dynamic> json) =>
      _$ImageProductFromJson(json);
}
