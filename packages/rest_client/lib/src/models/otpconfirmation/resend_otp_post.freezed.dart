// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resend_otp_post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResendOTPPost _$ResendOTPPostFromJson(Map<String, dynamic> json) {
  return _ResendOTPPost.fromJson(json);
}

/// @nodoc
mixin _$ResendOTPPost {
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResendOTPPostCopyWith<ResendOTPPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResendOTPPostCopyWith<$Res> {
  factory $ResendOTPPostCopyWith(
          ResendOTPPost value, $Res Function(ResendOTPPost) then) =
      _$ResendOTPPostCopyWithImpl<$Res, ResendOTPPost>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$ResendOTPPostCopyWithImpl<$Res, $Val extends ResendOTPPost>
    implements $ResendOTPPostCopyWith<$Res> {
  _$ResendOTPPostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResendOTPPostImplCopyWith<$Res>
    implements $ResendOTPPostCopyWith<$Res> {
  factory _$$ResendOTPPostImplCopyWith(
          _$ResendOTPPostImpl value, $Res Function(_$ResendOTPPostImpl) then) =
      __$$ResendOTPPostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$ResendOTPPostImplCopyWithImpl<$Res>
    extends _$ResendOTPPostCopyWithImpl<$Res, _$ResendOTPPostImpl>
    implements _$$ResendOTPPostImplCopyWith<$Res> {
  __$$ResendOTPPostImplCopyWithImpl(
      _$ResendOTPPostImpl _value, $Res Function(_$ResendOTPPostImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$ResendOTPPostImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResendOTPPostImpl implements _ResendOTPPost {
  const _$ResendOTPPostImpl({required this.email});

  factory _$ResendOTPPostImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResendOTPPostImplFromJson(json);

  @override
  final String email;

  @override
  String toString() {
    return 'ResendOTPPost(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResendOTPPostImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResendOTPPostImplCopyWith<_$ResendOTPPostImpl> get copyWith =>
      __$$ResendOTPPostImplCopyWithImpl<_$ResendOTPPostImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResendOTPPostImplToJson(
      this,
    );
  }
}

abstract class _ResendOTPPost implements ResendOTPPost {
  const factory _ResendOTPPost({required final String email}) =
      _$ResendOTPPostImpl;

  factory _ResendOTPPost.fromJson(Map<String, dynamic> json) =
      _$ResendOTPPostImpl.fromJson;

  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$ResendOTPPostImplCopyWith<_$ResendOTPPostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
