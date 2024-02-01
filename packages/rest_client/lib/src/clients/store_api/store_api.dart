// ignore_for_file: public_member_api_docs

import 'package:dio/dio.dart';
import 'package:rest_client/rest_client.dart';
import 'package:retrofit/retrofit.dart';

part 'store_api.g.dart';

@RestApi()
abstract class StoreApiClient {
  factory StoreApiClient(Dio dio, {String baseUrl}) = _StoreApiClient;

  @POST('/api/v1/stores')
  Future<CreateStoreResponse> createStoreApi(@Body() Map<String, dynamic> json);
}
