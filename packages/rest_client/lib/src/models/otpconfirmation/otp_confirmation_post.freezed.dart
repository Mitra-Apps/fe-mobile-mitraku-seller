// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_confirmation_post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OtpConfirmationPost _$OtpConfirmationPostFromJson(Map<String, dynamic> json) {
  return _OtpConfirmationPost.fromJson(json);
}

/// @nodoc
mixin _$OtpConfirmationPost {
  String get email => throw _privateConstructorUsedError;
  int get otp_code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OtpConfirmationPostCopyWith<OtpConfirmationPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpConfirmationPostCopyWith<$Res> {
  factory $OtpConfirmationPostCopyWith(
          OtpConfirmationPost value, $Res Function(OtpConfirmationPost) then) =
      _$OtpConfirmationPostCopyWithImpl<$Res, OtpConfirmationPost>;
  @useResult
  $Res call({String email, int otp_code});
}

/// @nodoc
class _$OtpConfirmationPostCopyWithImpl<$Res, $Val extends OtpConfirmationPost>
    implements $OtpConfirmationPostCopyWith<$Res> {
  _$OtpConfirmationPostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? otp_code = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      otp_code: null == otp_code
          ? _value.otp_code
          : otp_code // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OtpConfirmationPostImplCopyWith<$Res>
    implements $OtpConfirmationPostCopyWith<$Res> {
  factory _$$OtpConfirmationPostImplCopyWith(_$OtpConfirmationPostImpl value,
          $Res Function(_$OtpConfirmationPostImpl) then) =
      __$$OtpConfirmationPostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, int otp_code});
}

/// @nodoc
class __$$OtpConfirmationPostImplCopyWithImpl<$Res>
    extends _$OtpConfirmationPostCopyWithImpl<$Res, _$OtpConfirmationPostImpl>
    implements _$$OtpConfirmationPostImplCopyWith<$Res> {
  __$$OtpConfirmationPostImplCopyWithImpl(_$OtpConfirmationPostImpl _value,
      $Res Function(_$OtpConfirmationPostImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? otp_code = null,
  }) {
    return _then(_$OtpConfirmationPostImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      otp_code: null == otp_code
          ? _value.otp_code
          : otp_code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OtpConfirmationPostImpl implements _OtpConfirmationPost {
  const _$OtpConfirmationPostImpl(
      {required this.email, required this.otp_code});

  factory _$OtpConfirmationPostImpl.fromJson(Map<String, dynamic> json) =>
      _$$OtpConfirmationPostImplFromJson(json);

  @override
  final String email;
  @override
  final int otp_code;

  @override
  String toString() {
    return 'OtpConfirmationPost(email: $email, otp_code: $otp_code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpConfirmationPostImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.otp_code, otp_code) ||
                other.otp_code == otp_code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, otp_code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpConfirmationPostImplCopyWith<_$OtpConfirmationPostImpl> get copyWith =>
      __$$OtpConfirmationPostImplCopyWithImpl<_$OtpConfirmationPostImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OtpConfirmationPostImplToJson(
      this,
    );
  }
}

abstract class _OtpConfirmationPost implements OtpConfirmationPost {
  const factory _OtpConfirmationPost(
      {required final String email,
      required final int otp_code}) = _$OtpConfirmationPostImpl;

  factory _OtpConfirmationPost.fromJson(Map<String, dynamic> json) =
      _$OtpConfirmationPostImpl.fromJson;

  @override
  String get email;
  @override
  int get otp_code;
  @override
  @JsonKey(ignore: true)
  _$$OtpConfirmationPostImplCopyWith<_$OtpConfirmationPostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
