import 'package:dio/dio.dart';
import 'package:rest_client/rest_client.dart';
import 'package:retrofit/retrofit.dart';

part 'store_api.g.dart';

///
@RestApi()
abstract class StoreApiClient {
  /// Constructor
  factory StoreApiClient(Dio dio, {String baseUrl}) = _StoreApiClient;

  ///
  @GET('/api/v1/stores/my-store')
  Future<BaseResponse<MyStoreResponse>> getMyStore({
    @Header('Authorization') required String token,
    @Header('Content-Type') String content = 'application/json',
  });

  ///
  @POST('/api/v1/stores')
  Future<BaseResponseNullable<MyStoreResponse>> postCreateStore({
    // @Header('Authorization') required String token,
    // @Header('Content-Type') String content = 'application/json',
    @Body() required Map<String, dynamic> json,
  });

  ///
  @PUT('/api/v1/stores/{storeId}')
  Future<BaseResponseNullable<MyStoreResponse>> putEditStore({
    @Header('Authorization') required String token,
    @Header('Content-Type') String content = 'application/json',
    @Path('storeId') required String storeId,
    @Body() required Map<String, dynamic> json,
  });
}
