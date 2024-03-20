import 'package:freezed_annotation/freezed_annotation.dart';

part 'logout_post.freezed.dart';
part 'logout_post.g.dart';
@freezed
class LogoutPost with _$LogoutPost {
  ///
  const factory LogoutPost({
    required String email,
    required String password,
  }) = _LogoutPost;

  ///
  factory LogoutPost.fromJson(Map<String, dynamic> json) =>
      _$LogoutPostFromJson(json);
}