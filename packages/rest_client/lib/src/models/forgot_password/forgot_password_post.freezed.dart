// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_password_post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ForgotPasswordPost _$ForgotPasswordPostFromJson(Map<String, dynamic> json) {
  return _ForgotPasswordPost.fromJson(json);
}

/// @nodoc
mixin _$ForgotPasswordPost {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  int get otp_code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForgotPasswordPostCopyWith<ForgotPasswordPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordPostCopyWith<$Res> {
  factory $ForgotPasswordPostCopyWith(
          ForgotPasswordPost value, $Res Function(ForgotPasswordPost) then) =
      _$ForgotPasswordPostCopyWithImpl<$Res, ForgotPasswordPost>;
  @useResult
  $Res call({String email, String password, int otp_code});
}

/// @nodoc
class _$ForgotPasswordPostCopyWithImpl<$Res, $Val extends ForgotPasswordPost>
    implements $ForgotPasswordPostCopyWith<$Res> {
  _$ForgotPasswordPostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? otp_code = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      otp_code: null == otp_code
          ? _value.otp_code
          : otp_code // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForgotPasswordPostImplCopyWith<$Res>
    implements $ForgotPasswordPostCopyWith<$Res> {
  factory _$$ForgotPasswordPostImplCopyWith(_$ForgotPasswordPostImpl value,
          $Res Function(_$ForgotPasswordPostImpl) then) =
      __$$ForgotPasswordPostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password, int otp_code});
}

/// @nodoc
class __$$ForgotPasswordPostImplCopyWithImpl<$Res>
    extends _$ForgotPasswordPostCopyWithImpl<$Res, _$ForgotPasswordPostImpl>
    implements _$$ForgotPasswordPostImplCopyWith<$Res> {
  __$$ForgotPasswordPostImplCopyWithImpl(_$ForgotPasswordPostImpl _value,
      $Res Function(_$ForgotPasswordPostImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? otp_code = null,
  }) {
    return _then(_$ForgotPasswordPostImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
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
class _$ForgotPasswordPostImpl implements _ForgotPasswordPost {
  const _$ForgotPasswordPostImpl(
      {required this.email, required this.password, required this.otp_code});

  factory _$ForgotPasswordPostImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForgotPasswordPostImplFromJson(json);

  @override
  final String email;
  @override
  final String password;
  @override
  final int otp_code;

  @override
  String toString() {
    return 'ForgotPasswordPost(email: $email, password: $password, otp_code: $otp_code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordPostImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.otp_code, otp_code) ||
                other.otp_code == otp_code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, password, otp_code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPasswordPostImplCopyWith<_$ForgotPasswordPostImpl> get copyWith =>
      __$$ForgotPasswordPostImplCopyWithImpl<_$ForgotPasswordPostImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForgotPasswordPostImplToJson(
      this,
    );
  }
}

abstract class _ForgotPasswordPost implements ForgotPasswordPost {
  const factory _ForgotPasswordPost(
      {required final String email,
      required final String password,
      required final int otp_code}) = _$ForgotPasswordPostImpl;

  factory _ForgotPasswordPost.fromJson(Map<String, dynamic> json) =
      _$ForgotPasswordPostImpl.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  int get otp_code;
  @override
  @JsonKey(ignore: true)
  _$$ForgotPasswordPostImplCopyWith<_$ForgotPasswordPostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
