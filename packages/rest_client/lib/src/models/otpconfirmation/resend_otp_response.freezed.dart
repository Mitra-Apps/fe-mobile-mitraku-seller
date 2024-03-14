// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resend_otp_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResendOTPResponse _$ResendOTPResponseFromJson(Map<String, dynamic> json) {
  return _ResendOTPResponse.fromJson(json);
}

/// @nodoc
mixin _$ResendOTPResponse {
  int get otp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResendOTPResponseCopyWith<ResendOTPResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResendOTPResponseCopyWith<$Res> {
  factory $ResendOTPResponseCopyWith(
          ResendOTPResponse value, $Res Function(ResendOTPResponse) then) =
      _$ResendOTPResponseCopyWithImpl<$Res, ResendOTPResponse>;
  @useResult
  $Res call({int otp});
}

/// @nodoc
class _$ResendOTPResponseCopyWithImpl<$Res, $Val extends ResendOTPResponse>
    implements $ResendOTPResponseCopyWith<$Res> {
  _$ResendOTPResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
  }) {
    return _then(_value.copyWith(
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResendOTPResponseImplCopyWith<$Res>
    implements $ResendOTPResponseCopyWith<$Res> {
  factory _$$ResendOTPResponseImplCopyWith(_$ResendOTPResponseImpl value,
          $Res Function(_$ResendOTPResponseImpl) then) =
      __$$ResendOTPResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int otp});
}

/// @nodoc
class __$$ResendOTPResponseImplCopyWithImpl<$Res>
    extends _$ResendOTPResponseCopyWithImpl<$Res, _$ResendOTPResponseImpl>
    implements _$$ResendOTPResponseImplCopyWith<$Res> {
  __$$ResendOTPResponseImplCopyWithImpl(_$ResendOTPResponseImpl _value,
      $Res Function(_$ResendOTPResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
  }) {
    return _then(_$ResendOTPResponseImpl(
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResendOTPResponseImpl implements _ResendOTPResponse {
  const _$ResendOTPResponseImpl({required this.otp});

  factory _$ResendOTPResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResendOTPResponseImplFromJson(json);

  @override
  final int otp;

  @override
  String toString() {
    return 'ResendOTPResponse(otp: $otp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResendOTPResponseImpl &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, otp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResendOTPResponseImplCopyWith<_$ResendOTPResponseImpl> get copyWith =>
      __$$ResendOTPResponseImplCopyWithImpl<_$ResendOTPResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResendOTPResponseImplToJson(
      this,
    );
  }
}

abstract class _ResendOTPResponse implements ResendOTPResponse {
  const factory _ResendOTPResponse({required final int otp}) =
      _$ResendOTPResponseImpl;

  factory _ResendOTPResponse.fromJson(Map<String, dynamic> json) =
      _$ResendOTPResponseImpl.fromJson;

  @override
  int get otp;
  @override
  @JsonKey(ignore: true)
  _$$ResendOTPResponseImplCopyWith<_$ResendOTPResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
