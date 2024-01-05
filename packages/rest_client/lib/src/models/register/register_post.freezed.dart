// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterPost _$RegisterPostFromJson(Map<String, dynamic> json) {
  return _RegisterPost.fromJson(json);
}

/// @nodoc
mixin _$RegisterPost {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get phone_number => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get role_id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterPostCopyWith<RegisterPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterPostCopyWith<$Res> {
  factory $RegisterPostCopyWith(
          RegisterPost value, $Res Function(RegisterPost) then) =
      _$RegisterPostCopyWithImpl<$Res, RegisterPost>;
  @useResult
  $Res call(
      {String email,
      String password,
      String name,
      String phone_number,
      String address,
      String role_id});
}

/// @nodoc
class _$RegisterPostCopyWithImpl<$Res, $Val extends RegisterPost>
    implements $RegisterPostCopyWith<$Res> {
  _$RegisterPostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? name = null,
    Object? phone_number = null,
    Object? address = null,
    Object? role_id = null,
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
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone_number: null == phone_number
          ? _value.phone_number
          : phone_number // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      role_id: null == role_id
          ? _value.role_id
          : role_id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterPostImplCopyWith<$Res>
    implements $RegisterPostCopyWith<$Res> {
  factory _$$RegisterPostImplCopyWith(
          _$RegisterPostImpl value, $Res Function(_$RegisterPostImpl) then) =
      __$$RegisterPostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      String password,
      String name,
      String phone_number,
      String address,
      String role_id});
}

/// @nodoc
class __$$RegisterPostImplCopyWithImpl<$Res>
    extends _$RegisterPostCopyWithImpl<$Res, _$RegisterPostImpl>
    implements _$$RegisterPostImplCopyWith<$Res> {
  __$$RegisterPostImplCopyWithImpl(
      _$RegisterPostImpl _value, $Res Function(_$RegisterPostImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? name = null,
    Object? phone_number = null,
    Object? address = null,
    Object? role_id = null,
  }) {
    return _then(_$RegisterPostImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone_number: null == phone_number
          ? _value.phone_number
          : phone_number // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      role_id: null == role_id
          ? _value.role_id
          : role_id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegisterPostImpl implements _RegisterPost {
  const _$RegisterPostImpl(
      {required this.email,
      required this.password,
      required this.name,
      required this.phone_number,
      required this.address,
      required this.role_id});

  factory _$RegisterPostImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegisterPostImplFromJson(json);

  @override
  final String email;
  @override
  final String password;
  @override
  final String name;
  @override
  final String phone_number;
  @override
  final String address;
  @override
  final String role_id;

  @override
  String toString() {
    return 'RegisterPost(email: $email, password: $password, name: $name, phone_number: $phone_number, address: $address, role_id: $role_id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterPostImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone_number, phone_number) ||
                other.phone_number == phone_number) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.role_id, role_id) || other.role_id == role_id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, email, password, name, phone_number, address, role_id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterPostImplCopyWith<_$RegisterPostImpl> get copyWith =>
      __$$RegisterPostImplCopyWithImpl<_$RegisterPostImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterPostImplToJson(
      this,
    );
  }
}

abstract class _RegisterPost implements RegisterPost {
  const factory _RegisterPost(
      {required final String email,
      required final String password,
      required final String name,
      required final String phone_number,
      required final String address,
      required final String role_id}) = _$RegisterPostImpl;

  factory _RegisterPost.fromJson(Map<String, dynamic> json) =
      _$RegisterPostImpl.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  String get name;
  @override
  String get phone_number;
  @override
  String get address;
  @override
  String get role_id;
  @override
  @JsonKey(ignore: true)
  _$$RegisterPostImplCopyWith<_$RegisterPostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
