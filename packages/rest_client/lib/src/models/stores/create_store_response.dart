import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_client/rest_client.dart';

part 'create_store_response.freezed.dart';
part 'create_store_response.g.dart';

///
@Freezed(fromJson: true)
class CreateStoreResponse with _$CreateStoreResponse {
  ///
  const factory CreateStoreResponse({
    required int code,
    required String message,
    required MyStoreResponse? data,
  }) = _CreateStoreResponse;

  ///
  factory CreateStoreResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateStoreResponseFromJson(json);
}
