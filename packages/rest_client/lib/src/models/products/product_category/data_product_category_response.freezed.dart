// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_product_category_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DataProductCategoryResponse _$DataProductCategoryResponseFromJson(
    Map<String, dynamic> json) {
  return _DataProductCategoryResponse.fromJson(json);
}

/// @nodoc
mixin _$DataProductCategoryResponse {
  @JsonKey(name: 'productCategory')
  List<ProductCategoryResponse>? get productCategory =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'uom')
  List<String>? get uom => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataProductCategoryResponseCopyWith<DataProductCategoryResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataProductCategoryResponseCopyWith<$Res> {
  factory $DataProductCategoryResponseCopyWith(
          DataProductCategoryResponse value,
          $Res Function(DataProductCategoryResponse) then) =
      _$DataProductCategoryResponseCopyWithImpl<$Res,
          DataProductCategoryResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'productCategory')
      List<ProductCategoryResponse>? productCategory,
      @JsonKey(name: 'uom') List<String>? uom});
}

/// @nodoc
class _$DataProductCategoryResponseCopyWithImpl<$Res,
        $Val extends DataProductCategoryResponse>
    implements $DataProductCategoryResponseCopyWith<$Res> {
  _$DataProductCategoryResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productCategory = freezed,
    Object? uom = freezed,
  }) {
    return _then(_value.copyWith(
      productCategory: freezed == productCategory
          ? _value.productCategory
          : productCategory // ignore: cast_nullable_to_non_nullable
              as List<ProductCategoryResponse>?,
      uom: freezed == uom
          ? _value.uom
          : uom // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataProductCategoryResponseImplCopyWith<$Res>
    implements $DataProductCategoryResponseCopyWith<$Res> {
  factory _$$DataProductCategoryResponseImplCopyWith(
          _$DataProductCategoryResponseImpl value,
          $Res Function(_$DataProductCategoryResponseImpl) then) =
      __$$DataProductCategoryResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'productCategory')
      List<ProductCategoryResponse>? productCategory,
      @JsonKey(name: 'uom') List<String>? uom});
}

/// @nodoc
class __$$DataProductCategoryResponseImplCopyWithImpl<$Res>
    extends _$DataProductCategoryResponseCopyWithImpl<$Res,
        _$DataProductCategoryResponseImpl>
    implements _$$DataProductCategoryResponseImplCopyWith<$Res> {
  __$$DataProductCategoryResponseImplCopyWithImpl(
      _$DataProductCategoryResponseImpl _value,
      $Res Function(_$DataProductCategoryResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productCategory = freezed,
    Object? uom = freezed,
  }) {
    return _then(_$DataProductCategoryResponseImpl(
      productCategory: freezed == productCategory
          ? _value._productCategory
          : productCategory // ignore: cast_nullable_to_non_nullable
              as List<ProductCategoryResponse>?,
      uom: freezed == uom
          ? _value._uom
          : uom // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataProductCategoryResponseImpl
    implements _DataProductCategoryResponse {
  const _$DataProductCategoryResponseImpl(
      {@JsonKey(name: 'productCategory')
      required final List<ProductCategoryResponse>? productCategory,
      @JsonKey(name: 'uom') required final List<String>? uom})
      : _productCategory = productCategory,
        _uom = uom;

  factory _$DataProductCategoryResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DataProductCategoryResponseImplFromJson(json);

  final List<ProductCategoryResponse>? _productCategory;
  @override
  @JsonKey(name: 'productCategory')
  List<ProductCategoryResponse>? get productCategory {
    final value = _productCategory;
    if (value == null) return null;
    if (_productCategory is EqualUnmodifiableListView) return _productCategory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _uom;
  @override
  @JsonKey(name: 'uom')
  List<String>? get uom {
    final value = _uom;
    if (value == null) return null;
    if (_uom is EqualUnmodifiableListView) return _uom;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DataProductCategoryResponse(productCategory: $productCategory, uom: $uom)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataProductCategoryResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._productCategory, _productCategory) &&
            const DeepCollectionEquality().equals(other._uom, _uom));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_productCategory),
      const DeepCollectionEquality().hash(_uom));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataProductCategoryResponseImplCopyWith<_$DataProductCategoryResponseImpl>
      get copyWith => __$$DataProductCategoryResponseImplCopyWithImpl<
          _$DataProductCategoryResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataProductCategoryResponseImplToJson(
      this,
    );
  }
}

abstract class _DataProductCategoryResponse
    implements DataProductCategoryResponse {
  const factory _DataProductCategoryResponse(
          {@JsonKey(name: 'productCategory')
          required final List<ProductCategoryResponse>? productCategory,
          @JsonKey(name: 'uom') required final List<String>? uom}) =
      _$DataProductCategoryResponseImpl;

  factory _DataProductCategoryResponse.fromJson(Map<String, dynamic> json) =
      _$DataProductCategoryResponseImpl.fromJson;

  @override
  @JsonKey(name: 'productCategory')
  List<ProductCategoryResponse>? get productCategory;
  @override
  @JsonKey(name: 'uom')
  List<String>? get uom;
  @override
  @JsonKey(ignore: true)
  _$$DataProductCategoryResponseImplCopyWith<_$DataProductCategoryResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
