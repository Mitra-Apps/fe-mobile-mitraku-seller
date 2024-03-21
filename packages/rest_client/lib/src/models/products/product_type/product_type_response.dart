// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_type_response.freezed.dart';
part 'product_type_response.g.dart';

///
@freezed
class ProductTypeResponse with _$ProductTypeResponse {
  ///
  const factory ProductTypeResponse({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'isActive') required bool isActive,
    @JsonKey(name: 'productCategoryId') required String productCategoryId,
  }) = _ProductTypeResponse;

  ///
  factory ProductTypeResponse.fromJson(Map<String, dynamic> json) => 
  _$ProductTypeResponseFromJson(json);
}
