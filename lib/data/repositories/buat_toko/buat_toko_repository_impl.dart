import 'package:mitraku_seller/data/repositories/buat_toko/buat_toko_repository.dart';
import 'package:rest_client/rest_client.dart';

class BuatTokoRepositoryImpl implements BuatTokoRepository {
  BuatTokoRepositoryImpl({required BuatTokoApiClient buatTokoApi})
      : _buatTokoApiClient = buatTokoApi;

  late final BuatTokoApiClient _buatTokoApiClient;

  @override
  Future<TokoAndaResponse> postCreateStore() async {
    final response = await _buatTokoApiClient.postCreateStore();
    return response;
  }

  @override
  Future putCreateStore() async {
    final response = await _buatTokoApiClient.putCreateStore();
    return response;
  }
}
