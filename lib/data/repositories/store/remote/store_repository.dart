import 'package:rest_client/rest_client.dart';

abstract class StoreRepository {
  Future<CreateStoreResponse> createStore(CreateStorePost createStorePost);
}
