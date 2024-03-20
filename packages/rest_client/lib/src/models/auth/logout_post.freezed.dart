// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'logout_post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LogoutPost _$LogoutPostFromJson(Map<String, dynamic> json) {
  return _LogoutPost.fromJson(json);
}

/// @nodoc
mixin _$LogoutPost {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LogoutPostCopyWith<LogoutPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogoutPostCopyWith<$Res> {
  factory $LogoutPostCopyWith(
          LogoutPost value, $Res Function(LogoutPost) then) =
      _$LogoutPostCopyWithImpl<$Res, LogoutPost>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$LogoutPostCopyWithImpl<$Res, $Val extends LogoutPost>
    implements $LogoutPostCopyWith<$Res> {
  _$LogoutPostCopyWithImpl(this._value, this._then);

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
abstract class _$$LogoutPostImplCopyWith<$Res>
    implements $LogoutPostCopyWith<$Res> {
  factory _$$LogoutPostImplCopyWith(
          _$LogoutPostImpl value, $Res Function(_$LogoutPostImpl) then) =
      __$$LogoutPostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$LogoutPostImplCopyWithImpl<$Res>
    extends _$LogoutPostCopyWithImpl<$Res, _$LogoutPostImpl>
    implements _$$LogoutPostImplCopyWith<$Res> {
  __$$LogoutPostImplCopyWithImpl(
      _$LogoutPostImpl _value, $Res Function(_$LogoutPostImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$LogoutPostImpl(
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
class _$LogoutPostImpl implements _LogoutPost {
  const _$LogoutPostImpl({required this.email, required this.password});

  factory _$LogoutPostImpl.fromJson(Map<String, dynamic> json) =>
      _$$LogoutPostImplFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'LogoutPost(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogoutPostImpl &&
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
  _$$LogoutPostImplCopyWith<_$LogoutPostImpl> get copyWith =>
      __$$LogoutPostImplCopyWithImpl<_$LogoutPostImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LogoutPostImplToJson(
      this,
    );
  }
}

abstract class _LogoutPost implements LogoutPost {
  const factory _LogoutPost(
      {required final String email,
      required final String password}) = _$LogoutPostImpl;

  factory _LogoutPost.fromJson(Map<String, dynamic> json) =
      _$LogoutPostImpl.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$LogoutPostImplCopyWith<_$LogoutPostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
