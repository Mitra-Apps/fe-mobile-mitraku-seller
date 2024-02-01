// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hours.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Hours _$HoursFromJson(Map<String, dynamic> json) {
  return _Hours.fromJson(json);
}

/// @nodoc
mixin _$Hours {
  String? get id => throw _privateConstructorUsedError;
  String? get storeId => throw _privateConstructorUsedError;
  int? get dayOfWeek => throw _privateConstructorUsedError;
  String? get open => throw _privateConstructorUsedError;
  String? get close => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HoursCopyWith<Hours> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HoursCopyWith<$Res> {
  factory $HoursCopyWith(Hours value, $Res Function(Hours) then) =
      _$HoursCopyWithImpl<$Res, Hours>;
  @useResult
  $Res call(
      {String? id,
      String? storeId,
      int? dayOfWeek,
      String? open,
      String? close});
}

/// @nodoc
class _$HoursCopyWithImpl<$Res, $Val extends Hours>
    implements $HoursCopyWith<$Res> {
  _$HoursCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? storeId = freezed,
    Object? dayOfWeek = freezed,
    Object? open = freezed,
    Object? close = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      storeId: freezed == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String?,
      dayOfWeek: freezed == dayOfWeek
          ? _value.dayOfWeek
          : dayOfWeek // ignore: cast_nullable_to_non_nullable
              as int?,
      open: freezed == open
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as String?,
      close: freezed == close
          ? _value.close
          : close // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HoursImplCopyWith<$Res> implements $HoursCopyWith<$Res> {
  factory _$$HoursImplCopyWith(
          _$HoursImpl value, $Res Function(_$HoursImpl) then) =
      __$$HoursImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? storeId,
      int? dayOfWeek,
      String? open,
      String? close});
}

/// @nodoc
class __$$HoursImplCopyWithImpl<$Res>
    extends _$HoursCopyWithImpl<$Res, _$HoursImpl>
    implements _$$HoursImplCopyWith<$Res> {
  __$$HoursImplCopyWithImpl(
      _$HoursImpl _value, $Res Function(_$HoursImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? storeId = freezed,
    Object? dayOfWeek = freezed,
    Object? open = freezed,
    Object? close = freezed,
  }) {
    return _then(_$HoursImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      storeId: freezed == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String?,
      dayOfWeek: freezed == dayOfWeek
          ? _value.dayOfWeek
          : dayOfWeek // ignore: cast_nullable_to_non_nullable
              as int?,
      open: freezed == open
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as String?,
      close: freezed == close
          ? _value.close
          : close // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HoursImpl implements _Hours {
  const _$HoursImpl(
      {this.id, this.storeId, this.dayOfWeek, this.open, this.close});

  factory _$HoursImpl.fromJson(Map<String, dynamic> json) =>
      _$$HoursImplFromJson(json);

  @override
  final String? id;
  @override
  final String? storeId;
  @override
  final int? dayOfWeek;
  @override
  final String? open;
  @override
  final String? close;

  @override
  String toString() {
    return 'Hours(id: $id, storeId: $storeId, dayOfWeek: $dayOfWeek, open: $open, close: $close)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HoursImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.storeId, storeId) || other.storeId == storeId) &&
            (identical(other.dayOfWeek, dayOfWeek) ||
                other.dayOfWeek == dayOfWeek) &&
            (identical(other.open, open) || other.open == open) &&
            (identical(other.close, close) || other.close == close));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, storeId, dayOfWeek, open, close);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HoursImplCopyWith<_$HoursImpl> get copyWith =>
      __$$HoursImplCopyWithImpl<_$HoursImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HoursImplToJson(
      this,
    );
  }
}

abstract class _Hours implements Hours {
  const factory _Hours(
      {final String? id,
      final String? storeId,
      final int? dayOfWeek,
      final String? open,
      final String? close}) = _$HoursImpl;

  factory _Hours.fromJson(Map<String, dynamic> json) = _$HoursImpl.fromJson;

  @override
  String? get id;
  @override
  String? get storeId;
  @override
  int? get dayOfWeek;
  @override
  String? get open;
  @override
  String? get close;
  @override
  @JsonKey(ignore: true)
  _$$HoursImplCopyWith<_$HoursImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
