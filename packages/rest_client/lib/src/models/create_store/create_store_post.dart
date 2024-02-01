// ignore_for_file: public_member_api_docs

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_client/src/models/create_store/hours.dart';
import 'package:rest_client/src/models/create_store/images.dart';
import 'package:rest_client/src/models/create_store/tags.dart';

part 'create_store_post.freezed.dart';
part 'create_store_post.g.dart';

@freezed
class CreateStorePost with _$CreateStorePost {
  const factory CreateStorePost({
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
  }) = _CreateStorePost;

  factory CreateStorePost.fromJson(Map<String, dynamic> json) =>
      _$CreateStorePostFromJson(json);
}
