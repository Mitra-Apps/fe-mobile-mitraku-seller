// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_store_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateStoreResponse _$CreateStoreResponseFromJson(Map<String, dynamic> json) {
  return _CreateStoreResponse.fromJson(json);
}

/// @nodoc
mixin _$CreateStoreResponse {
  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  MyStoreResponse? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateStoreResponseCopyWith<CreateStoreResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateStoreResponseCopyWith<$Res> {
  factory $CreateStoreResponseCopyWith(
          CreateStoreResponse value, $Res Function(CreateStoreResponse) then) =
      _$CreateStoreResponseCopyWithImpl<$Res, CreateStoreResponse>;
  @useResult
  $Res call({int code, String message, MyStoreResponse? data});

  $MyStoreResponseCopyWith<$Res>? get data;
}

/// @nodoc
class _$CreateStoreResponseCopyWithImpl<$Res, $Val extends CreateStoreResponse>
    implements $CreateStoreResponseCopyWith<$Res> {
  _$CreateStoreResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MyStoreResponse?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MyStoreResponseCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $MyStoreResponseCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreateStoreResponseImplCopyWith<$Res>
    implements $CreateStoreResponseCopyWith<$Res> {
  factory _$$CreateStoreResponseImplCopyWith(_$CreateStoreResponseImpl value,
          $Res Function(_$CreateStoreResponseImpl) then) =
      __$$CreateStoreResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String message, MyStoreResponse? data});

  @override
  $MyStoreResponseCopyWith<$Res>? get data;
}

/// @nodoc
class __$$CreateStoreResponseImplCopyWithImpl<$Res>
    extends _$CreateStoreResponseCopyWithImpl<$Res, _$CreateStoreResponseImpl>
    implements _$$CreateStoreResponseImplCopyWith<$Res> {
  __$$CreateStoreResponseImplCopyWithImpl(_$CreateStoreResponseImpl _value,
      $Res Function(_$CreateStoreResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(_$CreateStoreResponseImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MyStoreResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateStoreResponseImpl implements _CreateStoreResponse {
  const _$CreateStoreResponseImpl(
      {required this.code, required this.message, required this.data});

  factory _$CreateStoreResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateStoreResponseImplFromJson(json);

  @override
  final int code;
  @override
  final String message;
  @override
  final MyStoreResponse? data;

  @override
  String toString() {
    return 'CreateStoreResponse(code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateStoreResponseImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateStoreResponseImplCopyWith<_$CreateStoreResponseImpl> get copyWith =>
      __$$CreateStoreResponseImplCopyWithImpl<_$CreateStoreResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateStoreResponseImplToJson(
      this,
    );
  }
}

abstract class _CreateStoreResponse implements CreateStoreResponse {
  const factory _CreateStoreResponse(
      {required final int code,
      required final String message,
      required final MyStoreResponse? data}) = _$CreateStoreResponseImpl;

  factory _CreateStoreResponse.fromJson(Map<String, dynamic> json) =
      _$CreateStoreResponseImpl.fromJson;

  @override
  int get code;
  @override
  String get message;
  @override
  MyStoreResponse? get data;
  @override
  @JsonKey(ignore: true)
  _$$CreateStoreResponseImplCopyWith<_$CreateStoreResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
