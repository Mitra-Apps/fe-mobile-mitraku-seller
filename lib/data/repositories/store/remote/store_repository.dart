import 'package:rest_client/rest_client.dart';

abstract class StoreRepository {
  Future getMyStore();
  Future postCreateStore(CreateStorePostRequest buatTokoPostRequest);
  Future putEditStore(String storeId, ProductPostRequest productPostRequest);
}
