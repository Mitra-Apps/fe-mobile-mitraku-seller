// ignore_for_file: lines_longer_than_80_chars

import 'package:mitraku_seller/core/themes/app_themes.dart';
import 'package:mitraku_seller/data/repositories/product/remote/product_repository.dart';
import 'package:rest_client/rest_client.dart';

class ProductRepositoryImpl implements ProductRepository {
  ProductRepositoryImpl({
    required ProductApiClient productApiClient,
  }) : _productApiClient = productApiClient;

  late final ProductApiClient _productApiClient;

  @override
  Future<BaseResponse<List<ProductCategoryResponse>>> getProductCategory() async {
    final response = await _productApiClient.getProductCategory(
      token: AppConstant.token,
      isDeactivated: true,
    );
    return response;
  }

  @override
  Future<BaseResponse<List<ProductTypeResponse>>> getProductType(String idProductCategory) async {
    final response = await _productApiClient.getProductType(
      token: AppConstant.token,
      idProductCategory: idProductCategory,
      isDeactivated: true,
    );
    return response;
  }

  @override
  Future<BaseResponse<List<UomResponse>>> getUom() async {
    final response = await _productApiClient.getUom(
      token: AppConstant.token,
      isDeactivated: true,
    );
    return response;
  }

  @override
  Future<BaseResponse> createProduct(ProductPostRequest productPostRequest) async {
    final response = await _productApiClient.createProduct(
      token: AppConstant.token,
      json: productPostRequest.toJson(),
    );
    return response;
  }
}
