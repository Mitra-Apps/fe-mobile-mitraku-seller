// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_post_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductPostRequest _$ProductPostRequestFromJson(Map<String, dynamic> json) {
  return _ProductPostRequest.fromJson(json);
}

/// @nodoc
mixin _$ProductPostRequest {
  String? get storeId => throw _privateConstructorUsedError;
  List<ProductList>? get productList => throw _privateConstructorUsedError;
  String? get productTypeId => throw _privateConstructorUsedError;
  String? get productCategoryId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductPostRequestCopyWith<ProductPostRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductPostRequestCopyWith<$Res> {
  factory $ProductPostRequestCopyWith(
          ProductPostRequest value, $Res Function(ProductPostRequest) then) =
      _$ProductPostRequestCopyWithImpl<$Res, ProductPostRequest>;
  @useResult
  $Res call(
      {String? storeId,
      List<ProductList>? productList,
      String? productTypeId,
      String? productCategoryId});
}

/// @nodoc
class _$ProductPostRequestCopyWithImpl<$Res, $Val extends ProductPostRequest>
    implements $ProductPostRequestCopyWith<$Res> {
  _$ProductPostRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? storeId = freezed,
    Object? productList = freezed,
    Object? productTypeId = freezed,
    Object? productCategoryId = freezed,
  }) {
    return _then(_value.copyWith(
      storeId: freezed == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String?,
      productList: freezed == productList
          ? _value.productList
          : productList // ignore: cast_nullable_to_non_nullable
              as List<ProductList>?,
      productTypeId: freezed == productTypeId
          ? _value.productTypeId
          : productTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      productCategoryId: freezed == productCategoryId
          ? _value.productCategoryId
          : productCategoryId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductPostRequestImplCopyWith<$Res>
    implements $ProductPostRequestCopyWith<$Res> {
  factory _$$ProductPostRequestImplCopyWith(_$ProductPostRequestImpl value,
          $Res Function(_$ProductPostRequestImpl) then) =
      __$$ProductPostRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? storeId,
      List<ProductList>? productList,
      String? productTypeId,
      String? productCategoryId});
}

/// @nodoc
class __$$ProductPostRequestImplCopyWithImpl<$Res>
    extends _$ProductPostRequestCopyWithImpl<$Res, _$ProductPostRequestImpl>
    implements _$$ProductPostRequestImplCopyWith<$Res> {
  __$$ProductPostRequestImplCopyWithImpl(_$ProductPostRequestImpl _value,
      $Res Function(_$ProductPostRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? storeId = freezed,
    Object? productList = freezed,
    Object? productTypeId = freezed,
    Object? productCategoryId = freezed,
  }) {
    return _then(_$ProductPostRequestImpl(
      storeId: freezed == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String?,
      productList: freezed == productList
          ? _value._productList
          : productList // ignore: cast_nullable_to_non_nullable
              as List<ProductList>?,
      productTypeId: freezed == productTypeId
          ? _value.productTypeId
          : productTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      productCategoryId: freezed == productCategoryId
          ? _value.productCategoryId
          : productCategoryId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductPostRequestImpl implements _ProductPostRequest {
  const _$ProductPostRequestImpl(
      {this.storeId,
      final List<ProductList>? productList,
      this.productTypeId,
      this.productCategoryId})
      : _productList = productList;

  factory _$ProductPostRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductPostRequestImplFromJson(json);

  @override
  final String? storeId;
  final List<ProductList>? _productList;
  @override
  List<ProductList>? get productList {
    final value = _productList;
    if (value == null) return null;
    if (_productList is EqualUnmodifiableListView) return _productList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? productTypeId;
  @override
  final String? productCategoryId;

  @override
  String toString() {
    return 'ProductPostRequest(storeId: $storeId, productList: $productList, productTypeId: $productTypeId, productCategoryId: $productCategoryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductPostRequestImpl &&
            (identical(other.storeId, storeId) || other.storeId == storeId) &&
            const DeepCollectionEquality()
                .equals(other._productList, _productList) &&
            (identical(other.productTypeId, productTypeId) ||
                other.productTypeId == productTypeId) &&
            (identical(other.productCategoryId, productCategoryId) ||
                other.productCategoryId == productCategoryId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      storeId,
      const DeepCollectionEquality().hash(_productList),
      productTypeId,
      productCategoryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductPostRequestImplCopyWith<_$ProductPostRequestImpl> get copyWith =>
      __$$ProductPostRequestImplCopyWithImpl<_$ProductPostRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductPostRequestImplToJson(
      this,
    );
  }
}

abstract class _ProductPostRequest implements ProductPostRequest {
  const factory _ProductPostRequest(
      {final String? storeId,
      final List<ProductList>? productList,
      final String? productTypeId,
      final String? productCategoryId}) = _$ProductPostRequestImpl;

  factory _ProductPostRequest.fromJson(Map<String, dynamic> json) =
      _$ProductPostRequestImpl.fromJson;

  @override
  String? get storeId;
  @override
  List<ProductList>? get productList;
  @override
  String? get productTypeId;
  @override
  String? get productCategoryId;
  @override
  @JsonKey(ignore: true)
  _$$ProductPostRequestImplCopyWith<_$ProductPostRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
