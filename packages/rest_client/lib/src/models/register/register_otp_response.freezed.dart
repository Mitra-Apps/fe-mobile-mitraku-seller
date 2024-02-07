// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_otp_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterOTPResponse _$RegisterOTPResponseFromJson(Map<String, dynamic> json) {
  return _RegisterOTPResponse.fromJson(json);
}

/// @nodoc
mixin _$RegisterOTPResponse {
  String get otp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterOTPResponseCopyWith<RegisterOTPResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterOTPResponseCopyWith<$Res> {
  factory $RegisterOTPResponseCopyWith(
          RegisterOTPResponse value, $Res Function(RegisterOTPResponse) then) =
      _$RegisterOTPResponseCopyWithImpl<$Res, RegisterOTPResponse>;
  @useResult
  $Res call({String otp});
}

/// @nodoc
class _$RegisterOTPResponseCopyWithImpl<$Res, $Val extends RegisterOTPResponse>
    implements $RegisterOTPResponseCopyWith<$Res> {
  _$RegisterOTPResponseCopyWithImpl(this._value, this._then);

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
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterOTPResponseImplCopyWith<$Res>
    implements $RegisterOTPResponseCopyWith<$Res> {
  factory _$$RegisterOTPResponseImplCopyWith(_$RegisterOTPResponseImpl value,
          $Res Function(_$RegisterOTPResponseImpl) then) =
      __$$RegisterOTPResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String otp});
}

/// @nodoc
class __$$RegisterOTPResponseImplCopyWithImpl<$Res>
    extends _$RegisterOTPResponseCopyWithImpl<$Res, _$RegisterOTPResponseImpl>
    implements _$$RegisterOTPResponseImplCopyWith<$Res> {
  __$$RegisterOTPResponseImplCopyWithImpl(_$RegisterOTPResponseImpl _value,
      $Res Function(_$RegisterOTPResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
  }) {
    return _then(_$RegisterOTPResponseImpl(
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegisterOTPResponseImpl implements _RegisterOTPResponse {
  const _$RegisterOTPResponseImpl({required this.otp});

  factory _$RegisterOTPResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegisterOTPResponseImplFromJson(json);

  @override
  final String otp;

  @override
  String toString() {
    return 'RegisterOTPResponse(otp: $otp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterOTPResponseImpl &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, otp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterOTPResponseImplCopyWith<_$RegisterOTPResponseImpl> get copyWith =>
      __$$RegisterOTPResponseImplCopyWithImpl<_$RegisterOTPResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterOTPResponseImplToJson(
      this,
    );
  }
}

abstract class _RegisterOTPResponse implements RegisterOTPResponse {
  const factory _RegisterOTPResponse({required final String otp}) =
      _$RegisterOTPResponseImpl;

  factory _RegisterOTPResponse.fromJson(Map<String, dynamic> json) =
      _$RegisterOTPResponseImpl.fromJson;

  @override
  String get otp;
  @override
  @JsonKey(ignore: true)
  _$$RegisterOTPResponseImplCopyWith<_$RegisterOTPResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
