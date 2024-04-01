// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_store_response.freezed.dart';
part 'my_store_response.g.dart';

///
@freezed
class MyStoreResponse with _$MyStoreResponse {
  ///
  const factory MyStoreResponse({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'userId') required String userId,
    @JsonKey(name: 'storeName') required String storeName,
    @JsonKey(name: 'storeDescription') required String storeDescription,
    @JsonKey(name: 'address') required String address,
    @JsonKey(name: 'city') required String city,
    @JsonKey(name: 'state') required String state,
    @JsonKey(name: 'zipCode') required String zipCode,
    @JsonKey(name: 'phone') required String phone,
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'website') required String website,
    @JsonKey(name: 'status') required String status,
    @JsonKey(name: 'isActive') required bool isActive,
    @JsonKey(name: 'locationLat') required int locationLat,
    @JsonKey(name: 'locationLng') required int locationLng,
    @JsonKey(name: 'tags') required List<Tag> tags,
    @JsonKey(name: 'hours') required List<Hour> hours,
    @JsonKey(name: 'images') required List<ImageStore> images,
  }) = _MyStoreResponse;

  ///
  factory MyStoreResponse.fromJson(Map<String, dynamic> json) =>
      _$MyStoreResponseFromJson(json);
}

///
@freezed
class Hour with _$Hour {
  ///
  const factory Hour({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'storeId') required String storeId,
    @JsonKey(name: 'dayOfWeek') required int dayOfWeek,
    @JsonKey(name: 'open') required String open,
    @JsonKey(name: 'close') required String close,
    @JsonKey(name: 'is24hours') required bool is24Hours,
    @JsonKey(name: 'isOpen') required bool isOpen,
  }) = _Hour;

  ///
  factory Hour.fromJson(Map<String, dynamic> json) => _$HourFromJson(json);
}

///
@freezed
class ImageStore with _$ImageStore {
  ///
  const factory ImageStore({
    @JsonKey(name: 'imageType') required String imageType,
    @JsonKey(name: 'imageBase64') required String imageBase64,
    @JsonKey(name: 'id', includeIfNull: false) String? id,
    @JsonKey(name: 'storeId', includeIfNull: false) String? storeId,
    @JsonKey(name: 'imageUrl', includeIfNull: false) String? imageUrl,
  }) = _ImageStore;

  ///
  factory ImageStore.fromJson(Map<String, dynamic> json) =>
      _$ImageStoreFromJson(json);
}

///
@freezed
class Tag with _$Tag {
  ///
  const factory Tag({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'tagName') required String tagName,
  }) = _Tag;

  ///
  factory Tag.fromJson(Map<String, dynamic> json) => _$TagFromJson(json);
}
