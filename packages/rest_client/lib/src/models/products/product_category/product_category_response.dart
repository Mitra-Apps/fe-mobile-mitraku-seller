// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'product_category_response.freezed.dart';
part 'product_category_response.g.dart';

///
@freezed
class ProductCategoryResponse with _$ProductCategoryResponse {
  ///
  const factory ProductCategoryResponse({
    @JsonKey(name: 'id') required String? id,
    @JsonKey(name: 'name') required String? name,
    @JsonKey(name: 'isActive') required bool? isActive,
  }) = _ProductCategoryResponse;

  ///
  factory ProductCategoryResponse.fromJson(Map<String, dynamic> json) => 
  _$ProductCategoryResponseFromJson(json);
}
