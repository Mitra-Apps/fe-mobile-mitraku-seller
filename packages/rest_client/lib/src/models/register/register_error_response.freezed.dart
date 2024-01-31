// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_error_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterErrorResponse _$RegisterErrorResponseFromJson(
    Map<String, dynamic> json) {
  return _RegisterErrorResponse.fromJson(json);
}

/// @nodoc
mixin _$RegisterErrorResponse {
  String get code => throw _privateConstructorUsedError;
  String get code_detail => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterErrorResponseCopyWith<RegisterErrorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterErrorResponseCopyWith<$Res> {
  factory $RegisterErrorResponseCopyWith(RegisterErrorResponse value,
          $Res Function(RegisterErrorResponse) then) =
      _$RegisterErrorResponseCopyWithImpl<$Res, RegisterErrorResponse>;
  @useResult
  $Res call({String code, String code_detail, String message});
}

/// @nodoc
class _$RegisterErrorResponseCopyWithImpl<$Res,
        $Val extends RegisterErrorResponse>
    implements $RegisterErrorResponseCopyWith<$Res> {
  _$RegisterErrorResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? code_detail = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      code_detail: null == code_detail
          ? _value.code_detail
          : code_detail // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterErrorResponseImplCopyWith<$Res>
    implements $RegisterErrorResponseCopyWith<$Res> {
  factory _$$RegisterErrorResponseImplCopyWith(
          _$RegisterErrorResponseImpl value,
          $Res Function(_$RegisterErrorResponseImpl) then) =
      __$$RegisterErrorResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String code_detail, String message});
}

/// @nodoc
class __$$RegisterErrorResponseImplCopyWithImpl<$Res>
    extends _$RegisterErrorResponseCopyWithImpl<$Res,
        _$RegisterErrorResponseImpl>
    implements _$$RegisterErrorResponseImplCopyWith<$Res> {
  __$$RegisterErrorResponseImplCopyWithImpl(_$RegisterErrorResponseImpl _value,
      $Res Function(_$RegisterErrorResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? code_detail = null,
    Object? message = null,
  }) {
    return _then(_$RegisterErrorResponseImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      code_detail: null == code_detail
          ? _value.code_detail
          : code_detail // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegisterErrorResponseImpl implements _RegisterErrorResponse {
  const _$RegisterErrorResponseImpl(
      {required this.code, required this.code_detail, required this.message});

  factory _$RegisterErrorResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegisterErrorResponseImplFromJson(json);

  @override
  final String code;
  @override
  final String code_detail;
  @override
  final String message;

  @override
  String toString() {
    return 'RegisterErrorResponse(code: $code, code_detail: $code_detail, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterErrorResponseImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.code_detail, code_detail) ||
                other.code_detail == code_detail) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, code_detail, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterErrorResponseImplCopyWith<_$RegisterErrorResponseImpl>
      get copyWith => __$$RegisterErrorResponseImplCopyWithImpl<
          _$RegisterErrorResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterErrorResponseImplToJson(
      this,
    );
  }
}

abstract class _RegisterErrorResponse implements RegisterErrorResponse {
  const factory _RegisterErrorResponse(
      {required final String code,
      required final String code_detail,
      required final String message}) = _$RegisterErrorResponseImpl;

  factory _RegisterErrorResponse.fromJson(Map<String, dynamic> json) =
      _$RegisterErrorResponseImpl.fromJson;

  @override
  String get code;
  @override
  String get code_detail;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$RegisterErrorResponseImplCopyWith<_$RegisterErrorResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
