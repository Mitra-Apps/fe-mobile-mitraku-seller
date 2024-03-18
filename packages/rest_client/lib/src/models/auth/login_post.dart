import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_post.freezed.dart';
part 'login_post.g.dart';

@freezed
class LoginPost with _$LoginPost {
  ///
  const factory LoginPost({
    required String email,
    required String password,
  }) = _LoginPost;

  ///
  factory LoginPost.fromJson(Map<String, dynamic> json) =>
      _$LoginPostFromJson(json);
}
