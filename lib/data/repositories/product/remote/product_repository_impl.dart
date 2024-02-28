// ignore_for_file: lines_longer_than_80_chars

import 'package:mitraku_seller/data/repositories/product/remote/product_repository.dart';
import 'package:rest_client/rest_client.dart';

class ProductRepositoryImpl implements ProductRepository {
  ProductRepositoryImpl({required ProductApiClient productApiClient}) : _productApiClient = productApiClient;
  late final ProductApiClient _productApiClient;
  final String token = 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb2xlcyI6WyJtZXJjaGFudCIsImN1c3RvbWVyIl0sInN1YiI6IjU0ZmRmN2Q2LTBjNDQtNGQ2OS05NmFjLWJlZDJhNzllZjEzZCIsImV4cCI6MTcwOTExMzk5OSwiaWF0IjoxNzA5MTEwMzk5fQ.XkKiFag_U3LnHhUNA8MWKhuP0bmgw_Zpab0gmbfkfJ0';

  @override
  Future<BaseResponse<List<ProductCategoryResponse>>> getProductCategory() async {
    final response = await _productApiClient.getProductCategory(
      token: token,
      isDeactivated: true,
    );
    return response;
  }

  @override
  Future<BaseResponse<List<ProductTypeResponse>>> getProductType(String idProductCategory) async {
    final response = await _productApiClient.getProductType(
      token: token,
      idProductCategory: idProductCategory,
      isDeactivated: true,
    );
    return response;
  }

  @override
  Future<BaseResponse<List<UomResponse>>> getUom() async {
    final response = await _productApiClient.getUom(
      token: token,
      isDeactivated: true,
    );
    return response;
  }
}
