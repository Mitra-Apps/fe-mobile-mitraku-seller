import 'package:mitraku_seller/data/repositories/toko_anda/remote/toko_anda_repository.dart';
import 'package:rest_client/rest_client.dart';

class TokoAndaRepositoryImpl implements TokoAndaRepository {
  TokoAndaRepositoryImpl({required TokoAndaApiClient tokoAndaApi})
      : _tokoAndaApiClient = tokoAndaApi;

  late final TokoAndaApiClient _tokoAndaApiClient;

  @override
  Future<TokoAndaResponse> getMyStore() async {
    final response = await _tokoAndaApiClient.getMyStore();
    return response;
  }
}
