// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductResponse _$ProductResponseFromJson(Map<String, dynamic> json) {
  return _ProductResponse.fromJson(json);
}

/// @nodoc
mixin _$ProductResponse {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'storeId')
  String get storeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'saleStatus')
  bool get saleStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  int get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'stock')
  String get stock => throw _privateConstructorUsedError;
  @JsonKey(name: 'uom')
  String get uom => throw _privateConstructorUsedError;
  @JsonKey(name: 'productTypeId')
  String get productTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'productTypeName')
  String get productTypeName => throw _privateConstructorUsedError;
  @JsonKey(name: 'productCategoryId')
  String get productCategoryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'productCategoryName')
  String get productCategoryName => throw _privateConstructorUsedError;
  @JsonKey(name: 'images')
  List<ImageProduct> get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductResponseCopyWith<ProductResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductResponseCopyWith<$Res> {
  factory $ProductResponseCopyWith(
          ProductResponse value, $Res Function(ProductResponse) then) =
      _$ProductResponseCopyWithImpl<$Res, ProductResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'storeId') String storeId,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'saleStatus') bool saleStatus,
      @JsonKey(name: 'price') int price,
      @JsonKey(name: 'stock') String stock,
      @JsonKey(name: 'uom') String uom,
      @JsonKey(name: 'productTypeId') String productTypeId,
      @JsonKey(name: 'productTypeName') String productTypeName,
      @JsonKey(name: 'productCategoryId') String productCategoryId,
      @JsonKey(name: 'productCategoryName') String productCategoryName,
      @JsonKey(name: 'images') List<ImageProduct> images});
}

/// @nodoc
class _$ProductResponseCopyWithImpl<$Res, $Val extends ProductResponse>
    implements $ProductResponseCopyWith<$Res> {
  _$ProductResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? storeId = null,
    Object? name = null,
    Object? saleStatus = null,
    Object? price = null,
    Object? stock = null,
    Object? uom = null,
    Object? productTypeId = null,
    Object? productTypeName = null,
    Object? productCategoryId = null,
    Object? productCategoryName = null,
    Object? images = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      storeId: null == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      saleStatus: null == saleStatus
          ? _value.saleStatus
          : saleStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as String,
      uom: null == uom
          ? _value.uom
          : uom // ignore: cast_nullable_to_non_nullable
              as String,
      productTypeId: null == productTypeId
          ? _value.productTypeId
          : productTypeId // ignore: cast_nullable_to_non_nullable
              as String,
      productTypeName: null == productTypeName
          ? _value.productTypeName
          : productTypeName // ignore: cast_nullable_to_non_nullable
              as String,
      productCategoryId: null == productCategoryId
          ? _value.productCategoryId
          : productCategoryId // ignore: cast_nullable_to_non_nullable
              as String,
      productCategoryName: null == productCategoryName
          ? _value.productCategoryName
          : productCategoryName // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageProduct>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductResponseImplCopyWith<$Res>
    implements $ProductResponseCopyWith<$Res> {
  factory _$$ProductResponseImplCopyWith(_$ProductResponseImpl value,
          $Res Function(_$ProductResponseImpl) then) =
      __$$ProductResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'storeId') String storeId,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'saleStatus') bool saleStatus,
      @JsonKey(name: 'price') int price,
      @JsonKey(name: 'stock') String stock,
      @JsonKey(name: 'uom') String uom,
      @JsonKey(name: 'productTypeId') String productTypeId,
      @JsonKey(name: 'productTypeName') String productTypeName,
      @JsonKey(name: 'productCategoryId') String productCategoryId,
      @JsonKey(name: 'productCategoryName') String productCategoryName,
      @JsonKey(name: 'images') List<ImageProduct> images});
}

/// @nodoc
class __$$ProductResponseImplCopyWithImpl<$Res>
    extends _$ProductResponseCopyWithImpl<$Res, _$ProductResponseImpl>
    implements _$$ProductResponseImplCopyWith<$Res> {
  __$$ProductResponseImplCopyWithImpl(
      _$ProductResponseImpl _value, $Res Function(_$ProductResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? storeId = null,
    Object? name = null,
    Object? saleStatus = null,
    Object? price = null,
    Object? stock = null,
    Object? uom = null,
    Object? productTypeId = null,
    Object? productTypeName = null,
    Object? productCategoryId = null,
    Object? productCategoryName = null,
    Object? images = null,
  }) {
    return _then(_$ProductResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      storeId: null == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      saleStatus: null == saleStatus
          ? _value.saleStatus
          : saleStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as String,
      uom: null == uom
          ? _value.uom
          : uom // ignore: cast_nullable_to_non_nullable
              as String,
      productTypeId: null == productTypeId
          ? _value.productTypeId
          : productTypeId // ignore: cast_nullable_to_non_nullable
              as String,
      productTypeName: null == productTypeName
          ? _value.productTypeName
          : productTypeName // ignore: cast_nullable_to_non_nullable
              as String,
      productCategoryId: null == productCategoryId
          ? _value.productCategoryId
          : productCategoryId // ignore: cast_nullable_to_non_nullable
              as String,
      productCategoryName: null == productCategoryName
          ? _value.productCategoryName
          : productCategoryName // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageProduct>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductResponseImpl implements _ProductResponse {
  const _$ProductResponseImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'storeId') required this.storeId,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'saleStatus') required this.saleStatus,
      @JsonKey(name: 'price') required this.price,
      @JsonKey(name: 'stock') required this.stock,
      @JsonKey(name: 'uom') required this.uom,
      @JsonKey(name: 'productTypeId') required this.productTypeId,
      @JsonKey(name: 'productTypeName') required this.productTypeName,
      @JsonKey(name: 'productCategoryId') required this.productCategoryId,
      @JsonKey(name: 'productCategoryName') required this.productCategoryName,
      @JsonKey(name: 'images') required final List<ImageProduct> images})
      : _images = images;

  factory _$ProductResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductResponseImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'storeId')
  final String storeId;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'saleStatus')
  final bool saleStatus;
  @override
  @JsonKey(name: 'price')
  final int price;
  @override
  @JsonKey(name: 'stock')
  final String stock;
  @override
  @JsonKey(name: 'uom')
  final String uom;
  @override
  @JsonKey(name: 'productTypeId')
  final String productTypeId;
  @override
  @JsonKey(name: 'productTypeName')
  final String productTypeName;
  @override
  @JsonKey(name: 'productCategoryId')
  final String productCategoryId;
  @override
  @JsonKey(name: 'productCategoryName')
  final String productCategoryName;
  final List<ImageProduct> _images;
  @override
  @JsonKey(name: 'images')
  List<ImageProduct> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'ProductResponse(id: $id, storeId: $storeId, name: $name, saleStatus: $saleStatus, price: $price, stock: $stock, uom: $uom, productTypeId: $productTypeId, productTypeName: $productTypeName, productCategoryId: $productCategoryId, productCategoryName: $productCategoryName, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.storeId, storeId) || other.storeId == storeId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.saleStatus, saleStatus) ||
                other.saleStatus == saleStatus) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.uom, uom) || other.uom == uom) &&
            (identical(other.productTypeId, productTypeId) ||
                other.productTypeId == productTypeId) &&
            (identical(other.productTypeName, productTypeName) ||
                other.productTypeName == productTypeName) &&
            (identical(other.productCategoryId, productCategoryId) ||
                other.productCategoryId == productCategoryId) &&
            (identical(other.productCategoryName, productCategoryName) ||
                other.productCategoryName == productCategoryName) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      storeId,
      name,
      saleStatus,
      price,
      stock,
      uom,
      productTypeId,
      productTypeName,
      productCategoryId,
      productCategoryName,
      const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductResponseImplCopyWith<_$ProductResponseImpl> get copyWith =>
      __$$ProductResponseImplCopyWithImpl<_$ProductResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductResponseImplToJson(
      this,
    );
  }
}

abstract class _ProductResponse implements ProductResponse {
  const factory _ProductResponse(
      {@JsonKey(name: 'id') required final String id,
      @JsonKey(name: 'storeId') required final String storeId,
      @JsonKey(name: 'name') required final String name,
      @JsonKey(name: 'saleStatus') required final bool saleStatus,
      @JsonKey(name: 'price') required final int price,
      @JsonKey(name: 'stock') required final String stock,
      @JsonKey(name: 'uom') required final String uom,
      @JsonKey(name: 'productTypeId') required final String productTypeId,
      @JsonKey(name: 'productTypeName') required final String productTypeName,
      @JsonKey(name: 'productCategoryId')
      required final String productCategoryId,
      @JsonKey(name: 'productCategoryName')
      required final String productCategoryName,
      @JsonKey(name: 'images')
      required final List<ImageProduct> images}) = _$ProductResponseImpl;

  factory _ProductResponse.fromJson(Map<String, dynamic> json) =
      _$ProductResponseImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'storeId')
  String get storeId;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'saleStatus')
  bool get saleStatus;
  @override
  @JsonKey(name: 'price')
  int get price;
  @override
  @JsonKey(name: 'stock')
  String get stock;
  @override
  @JsonKey(name: 'uom')
  String get uom;
  @override
  @JsonKey(name: 'productTypeId')
  String get productTypeId;
  @override
  @JsonKey(name: 'productTypeName')
  String get productTypeName;
  @override
  @JsonKey(name: 'productCategoryId')
  String get productCategoryId;
  @override
  @JsonKey(name: 'productCategoryName')
  String get productCategoryName;
  @override
  @JsonKey(name: 'images')
  List<ImageProduct> get images;
  @override
  @JsonKey(ignore: true)
  _$$ProductResponseImplCopyWith<_$ProductResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ImageProduct _$ImageProductFromJson(Map<String, dynamic> json) {
  return _ImageProduct.fromJson(json);
}

/// @nodoc
mixin _$ImageProduct {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'imageId')
  String get imageId => throw _privateConstructorUsedError;
  @JsonKey(name: 'imageBase64Str')
  String get imageBase64Str => throw _privateConstructorUsedError;
  @JsonKey(name: 'imageUrl')
  String get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageProductCopyWith<ImageProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageProductCopyWith<$Res> {
  factory $ImageProductCopyWith(
          ImageProduct value, $Res Function(ImageProduct) then) =
      _$ImageProductCopyWithImpl<$Res, ImageProduct>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'imageId') String imageId,
      @JsonKey(name: 'imageBase64Str') String imageBase64Str,
      @JsonKey(name: 'imageUrl') String imageUrl});
}

/// @nodoc
class _$ImageProductCopyWithImpl<$Res, $Val extends ImageProduct>
    implements $ImageProductCopyWith<$Res> {
  _$ImageProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imageId = null,
    Object? imageBase64Str = null,
    Object? imageUrl = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      imageId: null == imageId
          ? _value.imageId
          : imageId // ignore: cast_nullable_to_non_nullable
              as String,
      imageBase64Str: null == imageBase64Str
          ? _value.imageBase64Str
          : imageBase64Str // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageProductImplCopyWith<$Res>
    implements $ImageProductCopyWith<$Res> {
  factory _$$ImageProductImplCopyWith(
          _$ImageProductImpl value, $Res Function(_$ImageProductImpl) then) =
      __$$ImageProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'imageId') String imageId,
      @JsonKey(name: 'imageBase64Str') String imageBase64Str,
      @JsonKey(name: 'imageUrl') String imageUrl});
}

/// @nodoc
class __$$ImageProductImplCopyWithImpl<$Res>
    extends _$ImageProductCopyWithImpl<$Res, _$ImageProductImpl>
    implements _$$ImageProductImplCopyWith<$Res> {
  __$$ImageProductImplCopyWithImpl(
      _$ImageProductImpl _value, $Res Function(_$ImageProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imageId = null,
    Object? imageBase64Str = null,
    Object? imageUrl = null,
  }) {
    return _then(_$ImageProductImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      imageId: null == imageId
          ? _value.imageId
          : imageId // ignore: cast_nullable_to_non_nullable
              as String,
      imageBase64Str: null == imageBase64Str
          ? _value.imageBase64Str
          : imageBase64Str // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageProductImpl implements _ImageProduct {
  const _$ImageProductImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'imageId') required this.imageId,
      @JsonKey(name: 'imageBase64Str') required this.imageBase64Str,
      @JsonKey(name: 'imageUrl') required this.imageUrl});

  factory _$ImageProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageProductImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'imageId')
  final String imageId;
  @override
  @JsonKey(name: 'imageBase64Str')
  final String imageBase64Str;
  @override
  @JsonKey(name: 'imageUrl')
  final String imageUrl;

  @override
  String toString() {
    return 'ImageProduct(id: $id, imageId: $imageId, imageBase64Str: $imageBase64Str, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imageId, imageId) || other.imageId == imageId) &&
            (identical(other.imageBase64Str, imageBase64Str) ||
                other.imageBase64Str == imageBase64Str) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, imageId, imageBase64Str, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageProductImplCopyWith<_$ImageProductImpl> get copyWith =>
      __$$ImageProductImplCopyWithImpl<_$ImageProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageProductImplToJson(
      this,
    );
  }
}

abstract class _ImageProduct implements ImageProduct {
  const factory _ImageProduct(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'imageId') required final String imageId,
          @JsonKey(name: 'imageBase64Str') required final String imageBase64Str,
          @JsonKey(name: 'imageUrl') required final String imageUrl}) =
      _$ImageProductImpl;

  factory _ImageProduct.fromJson(Map<String, dynamic> json) =
      _$ImageProductImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'imageId')
  String get imageId;
  @override
  @JsonKey(name: 'imageBase64Str')
  String get imageBase64Str;
  @override
  @JsonKey(name: 'imageUrl')
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$ImageProductImplCopyWith<_$ImageProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
