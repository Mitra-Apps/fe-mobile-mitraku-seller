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
  @JsonKey(name: "access_token")
  String get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: "refresh_token")
  String get refreshToken => throw _privateConstructorUsedError;

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
  $Res call(
      {@JsonKey(name: "access_token") String accessToken,
      @JsonKey(name: "refresh_token") String refreshToken});
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
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
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
  $Res call(
      {@JsonKey(name: "access_token") String accessToken,
      @JsonKey(name: "refresh_token") String refreshToken});
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
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_$DataLoginResponseImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataLoginResponseImpl implements _DataLoginResponse {
  const _$DataLoginResponseImpl(
      {@JsonKey(name: "access_token") required this.accessToken,
      @JsonKey(name: "refresh_token") required this.refreshToken});

  factory _$DataLoginResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataLoginResponseImplFromJson(json);

  @override
  @JsonKey(name: "access_token")
  final String accessToken;
  @override
  @JsonKey(name: "refresh_token")
  final String refreshToken;

  @override
  String toString() {
    return 'DataLoginResponse(accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataLoginResponseImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, refreshToken);

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
          {@JsonKey(name: "access_token") required final String accessToken,
          @JsonKey(name: "refresh_token") required final String refreshToken}) =
      _$DataLoginResponseImpl;

  factory _DataLoginResponse.fromJson(Map<String, dynamic> json) =
      _$DataLoginResponseImpl.fromJson;

  @override
  @JsonKey(name: "access_token")
  String get accessToken;
  @override
  @JsonKey(name: "refresh_token")
  String get refreshToken;
  @override
  @JsonKey(ignore: true)
  _$$DataLoginResponseImplCopyWith<_$DataLoginResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
