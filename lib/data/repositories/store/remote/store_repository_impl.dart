import 'package:mitraku_seller/data/repositories/store/remote/store_repository.dart';
import 'package:rest_client/rest_client.dart';

class StoreRepositoryImpl implements StoreRepository {
  StoreRepositoryImpl({required StoreApiClient storeApiClient})
      : _storeApiClient = storeApiClient;

  late final StoreApiClient _storeApiClient;

  @override
  Future<CreateStoreResponse> createStore(
    CreateStorePost createStorePost,
  ) async {
    final response =
        await _storeApiClient.createStoreApi(createStorePost.toJson());
    return response;
  }
}
