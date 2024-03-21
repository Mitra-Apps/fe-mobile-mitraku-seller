import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_client/rest_client.dart';

part 'your_store_response.freezed.dart';
part 'your_store_response.g.dart';

///
@Freezed(fromJson: true)
class YourStoreResponse with _$YourStoreResponse {
  ///
  const factory YourStoreResponse({
    required int code,
    required String message,
    required MyStoreResponse? data,
  }) = _YourStoreResponse;

  ///
  factory YourStoreResponse.fromJson(Map<String, dynamic> json) =>
      _$YourStoreResponseFromJson(json);
}
