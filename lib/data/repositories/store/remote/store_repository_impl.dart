// ignore_for_file: lines_longer_than_80_chars

import 'package:mitraku_seller/core/themes/app_themes.dart';
import 'package:mitraku_seller/data/repositories/store/remote/store_repository.dart';
import 'package:rest_client/rest_client.dart';

class StoreRepositoryImpl implements StoreRepository {
  StoreRepositoryImpl({
    required StoreApiClient storeApiClient,
  }) : _storeApiClient = storeApiClient;

  late final StoreApiClient _storeApiClient;

  @override
  Future<BaseResponse<MyStoreResponse>> getMyStore() async {
    final response = await _storeApiClient.getMyStore(token: AppConstant.token);
    return response;
  }
}
