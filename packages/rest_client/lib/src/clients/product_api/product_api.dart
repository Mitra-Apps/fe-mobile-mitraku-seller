import 'package:dio/dio.dart';
import 'package:rest_client/rest_client.dart';
import 'package:rest_client/src/models/products/product_category/data_product_category_response.dart';
import 'package:rest_client/src/models/products/product_list/product_response.dart';
import 'package:retrofit/retrofit.dart';

part 'product_api.g.dart';

///
@RestApi()
abstract class ProductApiClient {
  ///Constructor
  factory ProductApiClient(Dio dio, {String baseUrl}) = _ProductApiClient;

  ///
  @GET('/api/v1/product-category/{isDeactivated}')
  Future<BaseResponse<DataProductCategoryResponse>> getProductCategory({
    @Header('Authorization') required String token,
    @Path('isDeactivated') required bool isDeactivated,
    @Header('Content-Type') String content = 'application/json',
  });

  ///
  @GET('/api/v1/product-type/{idProductCategory}/{isDeactivated}')
  Future<BaseResponse<List<ProductTypeResponse>>> getProductType({
    @Header('Authorization') required String token,
    @Path('idProductCategory') required String idProductCategory,
    @Path('isDeactivated') required bool isDeactivated,
    @Header('Content-Type') String content = 'application/json',
  });

  ///
  @GET('/api/v1/uom/{isDeactivated}')
  Future<BaseResponse<List<UomResponse>>> getUom({
    @Header('Authorization') required String token,
    @Path('isDeactivated') required bool isDeactivated,
    @Header('Content-Type') String content = 'application/json',
  });

  ///
  @POST('/api/v1/products')
  Future<BaseResponse> createProduct({
    @Header('Authorization') required String token,
    @Body() required Map<String, dynamic> json,
    @Header('Content-Type') String content = 'application/json',
  });

  ///GET PRODUCT LIST
  @GET('/api/v1/product-list/{storeId}/{isDeactivated}')
  Future<BaseResponse<List<ProductResponse>>> getProductList({
    @Path('storeId') required String storeId,
    @Path('isDeactivated') required bool isDeactivated,
    @Header('Authorization') required String token,
    @Header('Content-Type') String content = 'application/json',
  });
}
