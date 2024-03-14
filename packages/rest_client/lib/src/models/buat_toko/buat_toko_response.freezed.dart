// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'buat_toko_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BuatTokoResponse _$BuatTokoResponseFromJson(Map<String, dynamic> json) {
  return _BuatTokoResponse.fromJson(json);
}

/// @nodoc
mixin _$BuatTokoResponse {
  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  TokoAndaData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BuatTokoResponseCopyWith<BuatTokoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuatTokoResponseCopyWith<$Res> {
  factory $BuatTokoResponseCopyWith(
          BuatTokoResponse value, $Res Function(BuatTokoResponse) then) =
      _$BuatTokoResponseCopyWithImpl<$Res, BuatTokoResponse>;
  @useResult
  $Res call({int code, String message, TokoAndaData? data});

  $TokoAndaDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$BuatTokoResponseCopyWithImpl<$Res, $Val extends BuatTokoResponse>
    implements $BuatTokoResponseCopyWith<$Res> {
  _$BuatTokoResponseCopyWithImpl(this._value, this._then);

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
              as TokoAndaData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TokoAndaDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $TokoAndaDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BuatTokoResponseImplCopyWith<$Res>
    implements $BuatTokoResponseCopyWith<$Res> {
  factory _$$BuatTokoResponseImplCopyWith(_$BuatTokoResponseImpl value,
          $Res Function(_$BuatTokoResponseImpl) then) =
      __$$BuatTokoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String message, TokoAndaData? data});

  @override
  $TokoAndaDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$BuatTokoResponseImplCopyWithImpl<$Res>
    extends _$BuatTokoResponseCopyWithImpl<$Res, _$BuatTokoResponseImpl>
    implements _$$BuatTokoResponseImplCopyWith<$Res> {
  __$$BuatTokoResponseImplCopyWithImpl(_$BuatTokoResponseImpl _value,
      $Res Function(_$BuatTokoResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(_$BuatTokoResponseImpl(
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
              as TokoAndaData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BuatTokoResponseImpl implements _BuatTokoResponse {
  const _$BuatTokoResponseImpl(
      {required this.code, required this.message, required this.data});

  factory _$BuatTokoResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BuatTokoResponseImplFromJson(json);

  @override
  final int code;
  @override
  final String message;
  @override
  final TokoAndaData? data;

  @override
  String toString() {
    return 'BuatTokoResponse(code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BuatTokoResponseImpl &&
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
  _$$BuatTokoResponseImplCopyWith<_$BuatTokoResponseImpl> get copyWith =>
      __$$BuatTokoResponseImplCopyWithImpl<_$BuatTokoResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BuatTokoResponseImplToJson(
      this,
    );
  }
}

abstract class _BuatTokoResponse implements BuatTokoResponse {
  const factory _BuatTokoResponse(
      {required final int code,
      required final String message,
      required final TokoAndaData? data}) = _$BuatTokoResponseImpl;

  factory _BuatTokoResponse.fromJson(Map<String, dynamic> json) =
      _$BuatTokoResponseImpl.fromJson;

  @override
  int get code;
  @override
  String get message;
  @override
  TokoAndaData? get data;
  @override
  @JsonKey(ignore: true)
  _$$BuatTokoResponseImplCopyWith<_$BuatTokoResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
