import 'package:rest_client/rest_client.dart';

abstract class StoreRepository {
  Future getMyStore();
  Future postCreateStore(CreateStorePostRequest createStorePostRequest);
  Future putEditStore(String storeId, EditStorePutRequest editStorePutRequest);
}
