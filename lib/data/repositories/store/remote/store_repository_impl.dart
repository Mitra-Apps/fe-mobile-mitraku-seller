// ignore_for_file: lines_longer_than_80_chars

import 'package:mitraku_seller/data/repositories/store/remote/store_repository.dart';
import 'package:rest_client/rest_client.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StoreRepositoryImpl implements StoreRepository {
  StoreRepositoryImpl({
    required StoreApiClient storeApiClient,
  }) : _storeApiClient = storeApiClient;

  late final StoreApiClient _storeApiClient;

  @override
  Future<BaseResponse<MyStoreResponse>> getMyStore() async {
    final prefs = await SharedPreferences.getInstance();
    final accessToken = prefs.getString('access_token');

    final response = await _storeApiClient.getMyStore(
      token: 'Bearer $accessToken',
    );
    return response;
  }

  @override
  Future<BaseResponseNullable> postCreateStore(
      CreateStorePostRequest createStorePostRequest) async {
    final prefs = await SharedPreferences.getInstance();
    final accessToken = prefs.getString('access_token');

    final response = await _storeApiClient.postCreateStore(
      token: 'Bearer $accessToken',
      json: createStorePostRequest.toJson(),
    );
    return response;
  }

  @override
  Future<BaseResponseNullable> putEditStore(
      String storeId, EditStorePutRequest editStorePutRequest) async {
    final prefs = await SharedPreferences.getInstance();
    final accessToken = prefs.getString('access_token');

    final response = await _storeApiClient.putEditStore(
      token: 'Bearer $accessToken',
      storeId: storeId,
      json: editStorePutRequest.toJson(),
    );
    return response;
  }
}
