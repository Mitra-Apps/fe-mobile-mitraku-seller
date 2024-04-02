// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'uom_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UomResponse _$UomResponseFromJson(Map<String, dynamic> json) {
  return _UomResponse.fromJson(json);
}

/// @nodoc
mixin _$UomResponse {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'symbol')
  String get symbol => throw _privateConstructorUsedError;
  @JsonKey(name: 'isActive')
  bool get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UomResponseCopyWith<UomResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UomResponseCopyWith<$Res> {
  factory $UomResponseCopyWith(
          UomResponse value, $Res Function(UomResponse) then) =
      _$UomResponseCopyWithImpl<$Res, UomResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'symbol') String symbol,
      @JsonKey(name: 'isActive') bool isActive});
}

/// @nodoc
class _$UomResponseCopyWithImpl<$Res, $Val extends UomResponse>
    implements $UomResponseCopyWith<$Res> {
  _$UomResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? symbol = null,
    Object? isActive = null,
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
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UomResponseImplCopyWith<$Res>
    implements $UomResponseCopyWith<$Res> {
  factory _$$UomResponseImplCopyWith(
          _$UomResponseImpl value, $Res Function(_$UomResponseImpl) then) =
      __$$UomResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'symbol') String symbol,
      @JsonKey(name: 'isActive') bool isActive});
}

/// @nodoc
class __$$UomResponseImplCopyWithImpl<$Res>
    extends _$UomResponseCopyWithImpl<$Res, _$UomResponseImpl>
    implements _$$UomResponseImplCopyWith<$Res> {
  __$$UomResponseImplCopyWithImpl(
      _$UomResponseImpl _value, $Res Function(_$UomResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? symbol = null,
    Object? isActive = null,
  }) {
    return _then(_$UomResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UomResponseImpl implements _UomResponse {
  const _$UomResponseImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'symbol') required this.symbol,
      @JsonKey(name: 'isActive') required this.isActive});

  factory _$UomResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UomResponseImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'symbol')
  final String symbol;
  @override
  @JsonKey(name: 'isActive')
  final bool isActive;

  @override
  String toString() {
    return 'UomResponse(id: $id, name: $name, symbol: $symbol, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UomResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, symbol, isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UomResponseImplCopyWith<_$UomResponseImpl> get copyWith =>
      __$$UomResponseImplCopyWithImpl<_$UomResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UomResponseImplToJson(
      this,
    );
  }
}

abstract class _UomResponse implements UomResponse {
  const factory _UomResponse(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'symbol') required final String symbol,
          @JsonKey(name: 'isActive') required final bool isActive}) =
      _$UomResponseImpl;

  factory _UomResponse.fromJson(Map<String, dynamic> json) =
      _$UomResponseImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'symbol')
  String get symbol;
  @override
  @JsonKey(name: 'isActive')
  bool get isActive;
  @override
  @JsonKey(ignore: true)
  _$$UomResponseImplCopyWith<_$UomResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
