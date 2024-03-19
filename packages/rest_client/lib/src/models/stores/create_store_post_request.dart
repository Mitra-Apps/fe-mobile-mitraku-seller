// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_client/rest_client.dart';

part 'create_store_post_request.freezed.dart';
part 'create_store_post_request.g.dart';

///
@freezed
class CreateStorePostRequest with _$CreateStorePostRequest {
  ///
  const factory CreateStorePostRequest({
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
    @JsonKey(name: 'hours') required List<CreateNewHour> hours,
    @JsonKey(name: 'images') required List<ImageStore> images,
  }) = _CreateStorePostRequest;

  ///
  factory CreateStorePostRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateStorePostRequestFromJson(json);
}

///
@freezed
class CreateNewHour with _$CreateNewHour {
  ///
  const factory CreateNewHour({
    @JsonKey(name: 'dayOfWeek') required int dayOfWeek,
    @JsonKey(name: 'open') required String open,
    @JsonKey(name: 'close') required String close,
    @JsonKey(name: 'is24hours') required bool is24Hours,
    @JsonKey(name: 'isOpen') required bool isOpen,
  }) = _CreateNewHour;

  ///
  factory CreateNewHour.fromJson(Map<String, dynamic> json) =>
      _$CreateNewHourFromJson(json);
}
