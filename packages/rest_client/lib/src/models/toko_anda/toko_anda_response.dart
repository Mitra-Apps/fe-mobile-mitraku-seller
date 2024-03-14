import 'package:freezed_annotation/freezed_annotation.dart';

part 'toko_anda_response.freezed.dart';
part 'toko_anda_response.g.dart';

///
@Freezed(fromJson: true)
class TokoAndaResponse with _$TokoAndaResponse {
  ///
  const factory TokoAndaResponse({
    required int code,
    required String message,
    required TokoAndaData? data,
  }) = _TokoAndaResponse;

  ///
  factory TokoAndaResponse.fromJson(Map<String, dynamic> json) =>
      _$TokoAndaResponseFromJson(json);
}

@Freezed(fromJson: true)
class TokoAndaData with _$TokoAndaData {
  ///
  const factory TokoAndaData({
    required String id,
    required String userId,
    required String storeName,
    required String storeDescription,
    required String address,
    required String city,
    required String state,
    required String zipCode,
    required String phone,
    required String email,
    required String website,
    required String status,
    required bool isActivev,
    required int locationLat,
    required int locationLng,
    required List<TokoAndaTag> tags,
    required List<TokoAndaHour> hours,
    required List<TokoAndaImage> images,
  }) = _TokoAndaData;

  ///
  factory TokoAndaData.fromJson(Map<String, dynamic> json) =>
      _$TokoAndaDataFromJson(json);
}

@Freezed(fromJson: true)
class TokoAndaTag with _$TokoAndaTag {
  ///
  const factory TokoAndaTag({
    required String id,
    required String userId,
  }) = _TokoAndaTag;

  ///
  factory TokoAndaTag.fromJson(Map<String, dynamic> json) =>
      _$TokoAndaTagFromJson(json);
}

@Freezed(fromJson: true)
class TokoAndaHour with _$TokoAndaHour {
  ///
  const factory TokoAndaHour({
    required String id,
    required String userId,
  }) = _TokoAndaHour;

  ///
  factory TokoAndaHour.fromJson(Map<String, dynamic> json) =>
      _$TokoAndaHourFromJson(json);
}

@Freezed(fromJson: true)
class TokoAndaImage with _$TokoAndaImage {
  ///
  const factory TokoAndaImage({
    required String id,
    required String userId,
  }) = _TokoAndaImage;

  ///
  factory TokoAndaImage.fromJson(Map<String, dynamic> json) =>
      _$TokoAndaImageFromJson(json);
}
