// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_client/rest_client.dart';

part 'edit_store_put_request.freezed.dart';
part 'edit_store_put_request.g.dart';

///
@freezed
class EditStorePutRequest with _$EditStorePutRequest {
  ///
  const factory EditStorePutRequest({
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
  }) = _EditStorePutRequest;

  ///
  factory EditStorePutRequest.fromJson(Map<String, dynamic> json) =>
      _$EditStorePutRequestFromJson(json);
}
