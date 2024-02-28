// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_login_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DataLoginResponse _$DataLoginResponseFromJson(Map<String, dynamic> json) {
  return _DataLoginResponse.fromJson(json);
}

/// @nodoc
mixin _$DataLoginResponse {
  String get access_token => throw _privateConstructorUsedError;
  String get refresh_token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataLoginResponseCopyWith<DataLoginResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataLoginResponseCopyWith<$Res> {
  factory $DataLoginResponseCopyWith(
          DataLoginResponse value, $Res Function(DataLoginResponse) then) =
      _$DataLoginResponseCopyWithImpl<$Res, DataLoginResponse>;
  @useResult
  $Res call({String access_token, String refresh_token});
}

/// @nodoc
class _$DataLoginResponseCopyWithImpl<$Res, $Val extends DataLoginResponse>
    implements $DataLoginResponseCopyWith<$Res> {
  _$DataLoginResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? access_token = null,
    Object? refresh_token = null,
  }) {
    return _then(_value.copyWith(
      access_token: null == access_token
          ? _value.access_token
          : access_token // ignore: cast_nullable_to_non_nullable
              as String,
      refresh_token: null == refresh_token
          ? _value.refresh_token
          : refresh_token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataLoginResponseImplCopyWith<$Res>
    implements $DataLoginResponseCopyWith<$Res> {
  factory _$$DataLoginResponseImplCopyWith(_$DataLoginResponseImpl value,
          $Res Function(_$DataLoginResponseImpl) then) =
      __$$DataLoginResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String access_token, String refresh_token});
}

/// @nodoc
class __$$DataLoginResponseImplCopyWithImpl<$Res>
    extends _$DataLoginResponseCopyWithImpl<$Res, _$DataLoginResponseImpl>
    implements _$$DataLoginResponseImplCopyWith<$Res> {
  __$$DataLoginResponseImplCopyWithImpl(_$DataLoginResponseImpl _value,
      $Res Function(_$DataLoginResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? access_token = null,
    Object? refresh_token = null,
  }) {
    return _then(_$DataLoginResponseImpl(
      access_token: null == access_token
          ? _value.access_token
          : access_token // ignore: cast_nullable_to_non_nullable
              as String,
      refresh_token: null == refresh_token
          ? _value.refresh_token
          : refresh_token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataLoginResponseImpl implements _DataLoginResponse {
  const _$DataLoginResponseImpl(
      {required this.access_token, required this.refresh_token});

  factory _$DataLoginResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataLoginResponseImplFromJson(json);

  @override
  final String access_token;
  @override
  final String refresh_token;

  @override
  String toString() {
    return 'DataLoginResponse(access_token: $access_token, refresh_token: $refresh_token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataLoginResponseImpl &&
            (identical(other.access_token, access_token) ||
                other.access_token == access_token) &&
            (identical(other.refresh_token, refresh_token) ||
                other.refresh_token == refresh_token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, access_token, refresh_token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataLoginResponseImplCopyWith<_$DataLoginResponseImpl> get copyWith =>
      __$$DataLoginResponseImplCopyWithImpl<_$DataLoginResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataLoginResponseImplToJson(
      this,
    );
  }
}

abstract class _DataLoginResponse implements DataLoginResponse {
  const factory _DataLoginResponse(
      {required final String access_token,
      required final String refresh_token}) = _$DataLoginResponseImpl;

  factory _DataLoginResponse.fromJson(Map<String, dynamic> json) =
      _$DataLoginResponseImpl.fromJson;

  @override
  String get access_token;
  @override
  String get refresh_token;
  @override
  @JsonKey(ignore: true)
  _$$DataLoginResponseImplCopyWith<_$DataLoginResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
