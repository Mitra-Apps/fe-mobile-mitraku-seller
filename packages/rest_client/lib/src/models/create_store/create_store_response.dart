// ignore_for_file: public_member_api_docs

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_client/src/models/create_store/hours.dart';
import 'package:rest_client/src/models/create_store/images.dart';
import 'package:rest_client/src/models/create_store/tags.dart';

part 'create_store_response.freezed.dart';
part 'create_store_response.g.dart';

@freezed
class CreateStoreResponse with _$CreateStoreResponse {
  const factory CreateStoreResponse({
    int? code,
    String? message,
    Data? data,
  }) = _CreateStoreResponse;

  factory CreateStoreResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateStoreResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    String? id,
    String? userId,
    String? storeName,
    String? storeDescription,
    String? address,
    String? city,
    String? state,
    String? zipCode,
    String? phone,
    String? email,
    String? website,
    String? status,
    bool? isActive,
    int? locationLat,
    int? locationLng,
    List<Tags>? tags,
    List<Hours>? hours,
    List<Images>? images,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
