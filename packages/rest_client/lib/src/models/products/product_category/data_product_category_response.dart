// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_client/rest_client.dart';

part 'data_product_category_response.freezed.dart';
part 'data_product_category_response.g.dart';

///
@freezed
class DataProductCategoryResponse with _$DataProductCategoryResponse {
  ///
  const factory DataProductCategoryResponse({
    @JsonKey(name: 'productCategory')
    required List<ProductCategoryResponse>? productCategory,
    @JsonKey(name: 'uom')
    required List<String>? uom,
  }) = _DataProductCategoryResponse;

  ///
  factory DataProductCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$DataProductCategoryResponseFromJson(json);
}
