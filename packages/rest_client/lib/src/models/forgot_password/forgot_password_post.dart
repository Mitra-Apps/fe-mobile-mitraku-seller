import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_password_post.freezed.dart';
part 'forgot_password_post.g.dart';

@freezed
class ForgotPasswordPost with _$ForgotPasswordPost {
  ///
  const factory ForgotPasswordPost({
    required String email,
    required String password,
    required int otp_code
  }) = _ForgotPasswordPost;

  ///
  factory ForgotPasswordPost.fromJson(Map<String, dynamic> json) =>
      _$ForgotPasswordPostFromJson(json);
}
