// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginPost _$LoginPostFromJson(Map<String, dynamic> json) {
  return _LoginPost.fromJson(json);
}

/// @nodoc
mixin _$LoginPost {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginPostCopyWith<LoginPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginPostCopyWith<$Res> {
  factory $LoginPostCopyWith(LoginPost value, $Res Function(LoginPost) then) =
      _$LoginPostCopyWithImpl<$Res, LoginPost>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$LoginPostCopyWithImpl<$Res, $Val extends LoginPost>
    implements $LoginPostCopyWith<$Res> {
  _$LoginPostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginPostImplCopyWith<$Res>
    implements $LoginPostCopyWith<$Res> {
  factory _$$LoginPostImplCopyWith(
          _$LoginPostImpl value, $Res Function(_$LoginPostImpl) then) =
      __$$LoginPostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$LoginPostImplCopyWithImpl<$Res>
    extends _$LoginPostCopyWithImpl<$Res, _$LoginPostImpl>
    implements _$$LoginPostImplCopyWith<$Res> {
  __$$LoginPostImplCopyWithImpl(
      _$LoginPostImpl _value, $Res Function(_$LoginPostImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$LoginPostImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginPostImpl implements _LoginPost {
  const _$LoginPostImpl({required this.email, required this.password});

  factory _$LoginPostImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginPostImplFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginPost(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginPostImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginPostImplCopyWith<_$LoginPostImpl> get copyWith =>
      __$$LoginPostImplCopyWithImpl<_$LoginPostImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginPostImplToJson(
      this,
    );
  }
}

abstract class _LoginPost implements LoginPost {
  const factory _LoginPost(
      {required final String email,
      required final String password}) = _$LoginPostImpl;

  factory _LoginPost.fromJson(Map<String, dynamic> json) =
      _$LoginPostImpl.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$LoginPostImplCopyWith<_$LoginPostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
