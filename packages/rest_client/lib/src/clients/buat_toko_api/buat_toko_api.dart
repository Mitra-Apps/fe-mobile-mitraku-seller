import 'package:dio/dio.dart';
import 'package:rest_client/src/models/toko_anda/toko_anda_response.dart';
import 'package:retrofit/retrofit.dart';

part 'buat_toko_api.g.dart';

///
@RestApi()
abstract class BuatTokoApiClient {
  /// Constructor
  factory BuatTokoApiClient(Dio dio, {String baseUrl}) = _BuatTokoApiClient;

  ///
  @POST('/api/v1/stores/my-store')
  Future<TokoAndaResponse> postCreateStore();

  ///
  @PUT('/api/v1/stores/my-store')
  Future<TokoAndaResponse> putCreateStore();
}
