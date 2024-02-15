import 'package:freezed_annotation/freezed_annotation.dart';

part 'resend_otp_post.freezed.dart';
part 'resend_otp_post.g.dart';

@Freezed(fromJson: true)
class ResendOTPPost with _$ResendOTPPost {
  ///
  const factory ResendOTPPost({
    required String email,
  }) = _ResendOTPPost;

  ///
  factory ResendOTPPost.fromJson(Map<String, dynamic> json) =>
      _$ResendOTPPostFromJson(json);
}
