import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_post.freezed.dart';
part 'register_post.g.dart';

/// Image dog data
@freezed
class RegisterPost with _$RegisterPost {
  ///
  const factory RegisterPost({
    required String email,
    required String password,
    required String name,
    required String phone_number,
    required List<String> role_id
  }) = _RegisterPost;

  ///
  factory RegisterPost.fromJson(Map<String, dynamic> json) =>
      _$RegisterPostFromJson(json);
}
