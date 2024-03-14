import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_client/rest_client.dart';

part 'buat_toko_response.freezed.dart';
part 'buat_toko_response.g.dart';

///
@Freezed(fromJson: true)
class BuatTokoResponse with _$BuatTokoResponse {
  ///
  const factory BuatTokoResponse({
    required int code,
    required String message,
    required TokoAndaData? data,
  }) = _BuatTokoResponse;

  ///
  factory BuatTokoResponse.fromJson(Map<String, dynamic> json) =>
      _$BuatTokoResponseFromJson(json);
}
