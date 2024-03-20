// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_category_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductCategoryResponse _$ProductCategoryResponseFromJson(
    Map<String, dynamic> json) {
  return _ProductCategoryResponse.fromJson(json);
}

/// @nodoc
mixin _$ProductCategoryResponse {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'isActive')
  bool? get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCategoryResponseCopyWith<ProductCategoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCategoryResponseCopyWith<$Res> {
  factory $ProductCategoryResponseCopyWith(ProductCategoryResponse value,
          $Res Function(ProductCategoryResponse) then) =
      _$ProductCategoryResponseCopyWithImpl<$Res, ProductCategoryResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'isActive') bool? isActive});
}

/// @nodoc
class _$ProductCategoryResponseCopyWithImpl<$Res,
        $Val extends ProductCategoryResponse>
    implements $ProductCategoryResponseCopyWith<$Res> {
  _$ProductCategoryResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductCategoryResponseImplCopyWith<$Res>
    implements $ProductCategoryResponseCopyWith<$Res> {
  factory _$$ProductCategoryResponseImplCopyWith(
          _$ProductCategoryResponseImpl value,
          $Res Function(_$ProductCategoryResponseImpl) then) =
      __$$ProductCategoryResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'isActive') bool? isActive});
}

/// @nodoc
class __$$ProductCategoryResponseImplCopyWithImpl<$Res>
    extends _$ProductCategoryResponseCopyWithImpl<$Res,
        _$ProductCategoryResponseImpl>
    implements _$$ProductCategoryResponseImplCopyWith<$Res> {
  __$$ProductCategoryResponseImplCopyWithImpl(
      _$ProductCategoryResponseImpl _value,
      $Res Function(_$ProductCategoryResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_$ProductCategoryResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductCategoryResponseImpl implements _ProductCategoryResponse {
  const _$ProductCategoryResponseImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'isActive') required this.isActive});

  factory _$ProductCategoryResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductCategoryResponseImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'isActive')
  final bool? isActive;

  @override
  String toString() {
    return 'ProductCategoryResponse(id: $id, name: $name, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductCategoryResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductCategoryResponseImplCopyWith<_$ProductCategoryResponseImpl>
      get copyWith => __$$ProductCategoryResponseImplCopyWithImpl<
          _$ProductCategoryResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductCategoryResponseImplToJson(
      this,
    );
  }
}

abstract class _ProductCategoryResponse implements ProductCategoryResponse {
  const factory _ProductCategoryResponse(
          {@JsonKey(name: 'id') required final String? id,
          @JsonKey(name: 'name') required final String? name,
          @JsonKey(name: 'isActive') required final bool? isActive}) =
      _$ProductCategoryResponseImpl;

  factory _ProductCategoryResponse.fromJson(Map<String, dynamic> json) =
      _$ProductCategoryResponseImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'isActive')
  bool? get isActive;
  @override
  @JsonKey(ignore: true)
  _$$ProductCategoryResponseImplCopyWith<_$ProductCategoryResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
