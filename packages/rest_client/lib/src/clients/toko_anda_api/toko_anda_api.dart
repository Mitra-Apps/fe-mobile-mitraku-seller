import 'package:dio/dio.dart';
import 'package:rest_client/src/models/toko_anda/toko_anda_response.dart';
import 'package:retrofit/retrofit.dart';

part 'toko_anda_api.g.dart';

///
@RestApi()
abstract class TokoAndaApiClient {
  /// Constructor
  factory TokoAndaApiClient(Dio dio, {String baseUrl}) = _TokoAndaApiClient;
  ///
  @GET('/api/v1/stores/my-store')
  Future<TokoAndaResponse> getMyStore();
}
