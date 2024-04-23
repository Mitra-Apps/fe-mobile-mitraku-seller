// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_nullable.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BaseResponseNullable<T> _$BaseResponseNullableFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _BaseResponseNullable<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$BaseResponseNullable<T> {
  dynamic get code => throw _privateConstructorUsedError;
  T? get data => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BaseResponseNullableCopyWith<T, BaseResponseNullable<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseNullableCopyWith<T, $Res> {
  factory $BaseResponseNullableCopyWith(BaseResponseNullable<T> value,
          $Res Function(BaseResponseNullable<T>) then) =
      _$BaseResponseNullableCopyWithImpl<T, $Res, BaseResponseNullable<T>>;
  @useResult
  $Res call({dynamic code, T? data, String message});
}

/// @nodoc
class _$BaseResponseNullableCopyWithImpl<T, $Res,
        $Val extends BaseResponseNullable<T>>
    implements $BaseResponseNullableCopyWith<T, $Res> {
  _$BaseResponseNullableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? data = freezed,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as dynamic,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseResponseNullableImplCopyWith<T, $Res>
    implements $BaseResponseNullableCopyWith<T, $Res> {
  factory _$$BaseResponseNullableImplCopyWith(
          _$BaseResponseNullableImpl<T> value,
          $Res Function(_$BaseResponseNullableImpl<T>) then) =
      __$$BaseResponseNullableImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({dynamic code, T? data, String message});
}

/// @nodoc
class __$$BaseResponseNullableImplCopyWithImpl<T, $Res>
    extends _$BaseResponseNullableCopyWithImpl<T, $Res,
        _$BaseResponseNullableImpl<T>>
    implements _$$BaseResponseNullableImplCopyWith<T, $Res> {
  __$$BaseResponseNullableImplCopyWithImpl(_$BaseResponseNullableImpl<T> _value,
      $Res Function(_$BaseResponseNullableImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? data = freezed,
    Object? message = null,
  }) {
    return _then(_$BaseResponseNullableImpl<T>(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as dynamic,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$BaseResponseNullableImpl<T> implements _BaseResponseNullable<T> {
  const _$BaseResponseNullableImpl(
      {required this.code, required this.data, required this.message});

  factory _$BaseResponseNullableImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$BaseResponseNullableImplFromJson(json, fromJsonT);

  @override
  final dynamic code;
  @override
  final T? data;
  @override
  final String message;

  @override
  String toString() {
    return 'BaseResponseNullable<$T>(code: $code, data: $data, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseNullableImpl<T> &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(data),
      message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseNullableImplCopyWith<T, _$BaseResponseNullableImpl<T>>
      get copyWith => __$$BaseResponseNullableImplCopyWithImpl<T,
          _$BaseResponseNullableImpl<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$BaseResponseNullableImplToJson<T>(this, toJsonT);
  }
}

abstract class _BaseResponseNullable<T> implements BaseResponseNullable<T> {
  const factory _BaseResponseNullable(
      {required final dynamic code,
      required final T? data,
      required final String message}) = _$BaseResponseNullableImpl<T>;

  factory _BaseResponseNullable.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$BaseResponseNullableImpl<T>.fromJson;

  @override
  dynamic get code;
  @override
  T? get data;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$BaseResponseNullableImplCopyWith<T, _$BaseResponseNullableImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
