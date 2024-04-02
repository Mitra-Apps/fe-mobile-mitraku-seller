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
    final refreshToken = prefs.getString('refresh_token');

    final response = await _storeApiClient.getMyStore(
      token: 'Bearer $accessToken',
    );
    return response;
  }

  @override
  Future<BaseResponseNullable> postCreateStore(
      CreateStorePostRequest buatTokoPostRequest) async {
    final prefs = await SharedPreferences.getInstance();
    final accessToken = prefs.getString('access_token');
    final refreshToken = prefs.getString('refresh_token');

    final response = await _storeApiClient.postCreateStore(
      json: buatTokoPostRequest.toJson(),
    );
    return response;
  }

  @override
  Future<BaseResponseNullable> putEditStore(
      String storeId, ProductPostRequest productPostRequest) async {
    final prefs = await SharedPreferences.getInstance();
    final accessToken = prefs.getString('access_token');
    final refreshToken = prefs.getString('refresh_token');

    final response = await _storeApiClient.putEditStore(
      token: 'Bearer $accessToken',
      storeId: storeId,
      json: productPostRequest.toJson(),
    );
    return response;
  }
}
