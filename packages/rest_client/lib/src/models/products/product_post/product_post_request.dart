import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_client/rest_client.dart';

part 'product_post_request.freezed.dart';
part 'product_post_request.g.dart';

/// Product post request
@Freezed(fromJson: true)
class ProductPostRequest with _$ProductPostRequest {
  ///
  const factory ProductPostRequest({
    String? storeId,
    List<ProductList>? productList,
    String? productTypeId,
    String? productCategoryId,
  }) = _ProductPostRequest;

  ///
  factory ProductPostRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductPostRequestFromJson(json);
}
