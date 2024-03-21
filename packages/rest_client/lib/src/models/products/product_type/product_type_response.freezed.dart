// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_type_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductTypeResponse _$ProductTypeResponseFromJson(Map<String, dynamic> json) {
  return _ProductTypeResponse.fromJson(json);
}

/// @nodoc
mixin _$ProductTypeResponse {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'isActive')
  bool get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'productCategoryId')
  String get productCategoryId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductTypeResponseCopyWith<ProductTypeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductTypeResponseCopyWith<$Res> {
  factory $ProductTypeResponseCopyWith(
          ProductTypeResponse value, $Res Function(ProductTypeResponse) then) =
      _$ProductTypeResponseCopyWithImpl<$Res, ProductTypeResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'isActive') bool isActive,
      @JsonKey(name: 'productCategoryId') String productCategoryId});
}

/// @nodoc
class _$ProductTypeResponseCopyWithImpl<$Res, $Val extends ProductTypeResponse>
    implements $ProductTypeResponseCopyWith<$Res> {
  _$ProductTypeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? isActive = null,
    Object? productCategoryId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      productCategoryId: null == productCategoryId
          ? _value.productCategoryId
          : productCategoryId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductTypeResponseImplCopyWith<$Res>
    implements $ProductTypeResponseCopyWith<$Res> {
  factory _$$ProductTypeResponseImplCopyWith(_$ProductTypeResponseImpl value,
          $Res Function(_$ProductTypeResponseImpl) then) =
      __$$ProductTypeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'isActive') bool isActive,
      @JsonKey(name: 'productCategoryId') String productCategoryId});
}

/// @nodoc
class __$$ProductTypeResponseImplCopyWithImpl<$Res>
    extends _$ProductTypeResponseCopyWithImpl<$Res, _$ProductTypeResponseImpl>
    implements _$$ProductTypeResponseImplCopyWith<$Res> {
  __$$ProductTypeResponseImplCopyWithImpl(_$ProductTypeResponseImpl _value,
      $Res Function(_$ProductTypeResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? isActive = null,
    Object? productCategoryId = null,
  }) {
    return _then(_$ProductTypeResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      productCategoryId: null == productCategoryId
          ? _value.productCategoryId
          : productCategoryId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductTypeResponseImpl implements _ProductTypeResponse {
  const _$ProductTypeResponseImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'isActive') required this.isActive,
      @JsonKey(name: 'productCategoryId') required this.productCategoryId});

  factory _$ProductTypeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductTypeResponseImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'isActive')
  final bool isActive;
  @override
  @JsonKey(name: 'productCategoryId')
  final String productCategoryId;

  @override
  String toString() {
    return 'ProductTypeResponse(id: $id, name: $name, isActive: $isActive, productCategoryId: $productCategoryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductTypeResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.productCategoryId, productCategoryId) ||
                other.productCategoryId == productCategoryId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, isActive, productCategoryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductTypeResponseImplCopyWith<_$ProductTypeResponseImpl> get copyWith =>
      __$$ProductTypeResponseImplCopyWithImpl<_$ProductTypeResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductTypeResponseImplToJson(
      this,
    );
  }
}

abstract class _ProductTypeResponse implements ProductTypeResponse {
  const factory _ProductTypeResponse(
      {@JsonKey(name: 'id') required final String id,
      @JsonKey(name: 'name') required final String name,
      @JsonKey(name: 'isActive') required final bool isActive,
      @JsonKey(name: 'productCategoryId')
      required final String productCategoryId}) = _$ProductTypeResponseImpl;

  factory _ProductTypeResponse.fromJson(Map<String, dynamic> json) =
      _$ProductTypeResponseImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'isActive')
  bool get isActive;
  @override
  @JsonKey(name: 'productCategoryId')
  String get productCategoryId;
  @override
  @JsonKey(ignore: true)
  _$$ProductTypeResponseImplCopyWith<_$ProductTypeResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
