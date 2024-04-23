// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'your_store_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

YourStoreResponse _$YourStoreResponseFromJson(Map<String, dynamic> json) {
  return _YourStoreResponse.fromJson(json);
}

/// @nodoc
mixin _$YourStoreResponse {
  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  MyStoreResponse? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $YourStoreResponseCopyWith<YourStoreResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YourStoreResponseCopyWith<$Res> {
  factory $YourStoreResponseCopyWith(
          YourStoreResponse value, $Res Function(YourStoreResponse) then) =
      _$YourStoreResponseCopyWithImpl<$Res, YourStoreResponse>;
  @useResult
  $Res call({int code, String message, MyStoreResponse? data});

  $MyStoreResponseCopyWith<$Res>? get data;
}

/// @nodoc
class _$YourStoreResponseCopyWithImpl<$Res, $Val extends YourStoreResponse>
    implements $YourStoreResponseCopyWith<$Res> {
  _$YourStoreResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$YourStoreResponseImplCopyWith<$Res>
    implements $YourStoreResponseCopyWith<$Res> {
  factory _$$YourStoreResponseImplCopyWith(_$YourStoreResponseImpl value,
          $Res Function(_$YourStoreResponseImpl) then) =
      __$$YourStoreResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String message, MyStoreResponse? data});

  @override
  $MyStoreResponseCopyWith<$Res>? get data;
}

/// @nodoc
class __$$YourStoreResponseImplCopyWithImpl<$Res>
    extends _$YourStoreResponseCopyWithImpl<$Res, _$YourStoreResponseImpl>
    implements _$$YourStoreResponseImplCopyWith<$Res> {
  __$$YourStoreResponseImplCopyWithImpl(_$YourStoreResponseImpl _value,
      $Res Function(_$YourStoreResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(_$YourStoreResponseImpl(
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
class _$YourStoreResponseImpl implements _YourStoreResponse {
  const _$YourStoreResponseImpl(
      {required this.code, required this.message, required this.data});

  factory _$YourStoreResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$YourStoreResponseImplFromJson(json);

  @override
  final int code;
  @override
  final String message;
  @override
  final MyStoreResponse? data;

  @override
  String toString() {
    return 'YourStoreResponse(code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$YourStoreResponseImpl &&
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
  _$$YourStoreResponseImplCopyWith<_$YourStoreResponseImpl> get copyWith =>
      __$$YourStoreResponseImplCopyWithImpl<_$YourStoreResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$YourStoreResponseImplToJson(
      this,
    );
  }
}

abstract class _YourStoreResponse implements YourStoreResponse {
  const factory _YourStoreResponse(
      {required final int code,
      required final String message,
      required final MyStoreResponse? data}) = _$YourStoreResponseImpl;

  factory _YourStoreResponse.fromJson(Map<String, dynamic> json) =
      _$YourStoreResponseImpl.fromJson;

  @override
  int get code;
  @override
  String get message;
  @override
  MyStoreResponse? get data;
  @override
  @JsonKey(ignore: true)
  _$$YourStoreResponseImplCopyWith<_$YourStoreResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
