// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductList _$ProductListFromJson(Map<String, dynamic> json) {
  return _ProductList.fromJson(json);
}

/// @nodoc
mixin _$ProductList {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'saleStatus')
  bool? get saleStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  int? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'stock')
  String? get stock => throw _privateConstructorUsedError;
  @JsonKey(name: 'uom')
  String? get uom => throw _privateConstructorUsedError;
  @JsonKey(name: 'productTypeId')
  String? get productTypeId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductListCopyWith<ProductList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductListCopyWith<$Res> {
  factory $ProductListCopyWith(
          ProductList value, $Res Function(ProductList) then) =
      _$ProductListCopyWithImpl<$Res, ProductList>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'saleStatus') bool? saleStatus,
      @JsonKey(name: 'price') int? price,
      @JsonKey(name: 'stock') String? stock,
      @JsonKey(name: 'uom') String? uom,
      @JsonKey(name: 'productTypeId') String? productTypeId});
}

/// @nodoc
class _$ProductListCopyWithImpl<$Res, $Val extends ProductList>
    implements $ProductListCopyWith<$Res> {
  _$ProductListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? saleStatus = freezed,
    Object? price = freezed,
    Object? stock = freezed,
    Object? uom = freezed,
    Object? productTypeId = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      saleStatus: freezed == saleStatus
          ? _value.saleStatus
          : saleStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as String?,
      uom: freezed == uom
          ? _value.uom
          : uom // ignore: cast_nullable_to_non_nullable
              as String?,
      productTypeId: freezed == productTypeId
          ? _value.productTypeId
          : productTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductListImplCopyWith<$Res>
    implements $ProductListCopyWith<$Res> {
  factory _$$ProductListImplCopyWith(
          _$ProductListImpl value, $Res Function(_$ProductListImpl) then) =
      __$$ProductListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'saleStatus') bool? saleStatus,
      @JsonKey(name: 'price') int? price,
      @JsonKey(name: 'stock') String? stock,
      @JsonKey(name: 'uom') String? uom,
      @JsonKey(name: 'productTypeId') String? productTypeId});
}

/// @nodoc
class __$$ProductListImplCopyWithImpl<$Res>
    extends _$ProductListCopyWithImpl<$Res, _$ProductListImpl>
    implements _$$ProductListImplCopyWith<$Res> {
  __$$ProductListImplCopyWithImpl(
      _$ProductListImpl _value, $Res Function(_$ProductListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? saleStatus = freezed,
    Object? price = freezed,
    Object? stock = freezed,
    Object? uom = freezed,
    Object? productTypeId = freezed,
  }) {
    return _then(_$ProductListImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      saleStatus: freezed == saleStatus
          ? _value.saleStatus
          : saleStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as String?,
      uom: freezed == uom
          ? _value.uom
          : uom // ignore: cast_nullable_to_non_nullable
              as String?,
      productTypeId: freezed == productTypeId
          ? _value.productTypeId
          : productTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductListImpl implements _ProductList {
  const _$ProductListImpl(
      {@JsonKey(name: 'name') this.name,
      @JsonKey(name: 'saleStatus') this.saleStatus = false,
      @JsonKey(name: 'price') this.price,
      @JsonKey(name: 'stock') this.stock,
      @JsonKey(name: 'uom') this.uom,
      @JsonKey(name: 'productTypeId') this.productTypeId});

  factory _$ProductListImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductListImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'saleStatus')
  final bool? saleStatus;
  @override
  @JsonKey(name: 'price')
  final int? price;
  @override
  @JsonKey(name: 'stock')
  final String? stock;
  @override
  @JsonKey(name: 'uom')
  final String? uom;
  @override
  @JsonKey(name: 'productTypeId')
  final String? productTypeId;

  @override
  String toString() {
    return 'ProductList(name: $name, saleStatus: $saleStatus, price: $price, stock: $stock, uom: $uom, productTypeId: $productTypeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductListImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.saleStatus, saleStatus) ||
                other.saleStatus == saleStatus) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.uom, uom) || other.uom == uom) &&
            (identical(other.productTypeId, productTypeId) ||
                other.productTypeId == productTypeId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, saleStatus, price, stock, uom, productTypeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductListImplCopyWith<_$ProductListImpl> get copyWith =>
      __$$ProductListImplCopyWithImpl<_$ProductListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductListImplToJson(
      this,
    );
  }
}

abstract class _ProductList implements ProductList {
  const factory _ProductList(
          {@JsonKey(name: 'name') final String? name,
          @JsonKey(name: 'saleStatus') final bool? saleStatus,
          @JsonKey(name: 'price') final int? price,
          @JsonKey(name: 'stock') final String? stock,
          @JsonKey(name: 'uom') final String? uom,
          @JsonKey(name: 'productTypeId') final String? productTypeId}) =
      _$ProductListImpl;

  factory _ProductList.fromJson(Map<String, dynamic> json) =
      _$ProductListImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'saleStatus')
  bool? get saleStatus;
  @override
  @JsonKey(name: 'price')
  int? get price;
  @override
  @JsonKey(name: 'stock')
  String? get stock;
  @override
  @JsonKey(name: 'uom')
  String? get uom;
  @override
  @JsonKey(name: 'productTypeId')
  String? get productTypeId;
  @override
  @JsonKey(ignore: true)
  _$$ProductListImplCopyWith<_$ProductListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
