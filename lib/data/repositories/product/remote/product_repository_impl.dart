// ignore_for_file: lines_longer_than_80_chars


import 'package:flutter/foundation.dart';
import 'package:mitraku_seller/data/repositories/product/remote/product_repository.dart';
import 'package:rest_client/rest_client.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProductRepositoryImpl implements ProductRepository {
  ProductRepositoryImpl({
    required ProductApiClient productApiClient,
  }) {
    _productApiClient = productApiClient;
  }

  late final ProductApiClient _productApiClient;

  @override
  Future<BaseResponse<DataProductCategoryResponse>> getProductCategory() async {
    final prefs = await SharedPreferences.getInstance();
    final accessToken = prefs.getString('access_token');
    final refreshToken = prefs.getString('refresh_token');

    debugPrint('token: data: $accessToken');

    final response = await _productApiClient.getProductCategory(
      token: 'Bearer $accessToken',
      isDeactivated: true,
    );
    return response;
  }

  @override
  Future<BaseResponse<List<ProductTypeResponse>>> getProductType(String idProductCategory) async {
    final prefs = await SharedPreferences.getInstance();
    final accessToken = prefs.getString('access_token');
    final refreshToken = prefs.getString('refresh_token');

    final response = await _productApiClient.getProductType(
      token: 'Bearer $accessToken',
      idProductCategory: idProductCategory,
      isDeactivated: true,
    );
    return response;
  }

  @override
  Future<BaseResponse<List<UomResponse>>> getUom() async {
    final prefs = await SharedPreferences.getInstance();
    final accessToken = prefs.getString('access_token');
    final refreshToken = prefs.getString('refresh_token');

    final response = await _productApiClient.getUom(
      token: 'Bearer $accessToken',
      isDeactivated: true,
    );
    return response;
  }

  @override
  Future<BaseResponse> createProduct(ProductPostRequest productPostRequest) async {
    final prefs = await SharedPreferences.getInstance();
    final accessToken = prefs.getString('access_token');
    final refreshToken = prefs.getString('refresh_token');

    final response = await _productApiClient.createProduct(
      token: 'Bearer $accessToken',
      json: productPostRequest.toJson(),
    );
    return response;
  }
}
