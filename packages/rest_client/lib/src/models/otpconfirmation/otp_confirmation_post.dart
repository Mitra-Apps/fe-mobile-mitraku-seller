import 'package:freezed_annotation/freezed_annotation.dart';

part 'otp_confirmation_post.freezed.dart';
part 'otp_confirmation_post.g.dart';

/// Image dog data
@freezed
class OtpConfirmationPost with _$OtpConfirmationPost {
  ///
  const factory OtpConfirmationPost({
    required String email,
    required int otp_code,
  }) = _OtpConfirmationPost;

  ///
  factory OtpConfirmationPost.fromJson(Map<String, dynamic> json) =>
      _$OtpConfirmationPostFromJson(json);
}
