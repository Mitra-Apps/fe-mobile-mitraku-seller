// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'toko_anda_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TokoAndaResponse _$TokoAndaResponseFromJson(Map<String, dynamic> json) {
  return _TokoAndaResponse.fromJson(json);
}

/// @nodoc
mixin _$TokoAndaResponse {
  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  TokoAndaData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokoAndaResponseCopyWith<TokoAndaResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokoAndaResponseCopyWith<$Res> {
  factory $TokoAndaResponseCopyWith(
          TokoAndaResponse value, $Res Function(TokoAndaResponse) then) =
      _$TokoAndaResponseCopyWithImpl<$Res, TokoAndaResponse>;
  @useResult
  $Res call({int code, String message, TokoAndaData? data});

  $TokoAndaDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$TokoAndaResponseCopyWithImpl<$Res, $Val extends TokoAndaResponse>
    implements $TokoAndaResponseCopyWith<$Res> {
  _$TokoAndaResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TokoAndaData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TokoAndaDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $TokoAndaDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TokoAndaResponseImplCopyWith<$Res>
    implements $TokoAndaResponseCopyWith<$Res> {
  factory _$$TokoAndaResponseImplCopyWith(_$TokoAndaResponseImpl value,
          $Res Function(_$TokoAndaResponseImpl) then) =
      __$$TokoAndaResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String message, TokoAndaData? data});

  @override
  $TokoAndaDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$TokoAndaResponseImplCopyWithImpl<$Res>
    extends _$TokoAndaResponseCopyWithImpl<$Res, _$TokoAndaResponseImpl>
    implements _$$TokoAndaResponseImplCopyWith<$Res> {
  __$$TokoAndaResponseImplCopyWithImpl(_$TokoAndaResponseImpl _value,
      $Res Function(_$TokoAndaResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(_$TokoAndaResponseImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TokoAndaData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TokoAndaResponseImpl implements _TokoAndaResponse {
  const _$TokoAndaResponseImpl(
      {required this.code, required this.message, required this.data});

  factory _$TokoAndaResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokoAndaResponseImplFromJson(json);

  @override
  final int code;
  @override
  final String message;
  @override
  final TokoAndaData? data;

  @override
  String toString() {
    return 'TokoAndaResponse(code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokoAndaResponseImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TokoAndaResponseImplCopyWith<_$TokoAndaResponseImpl> get copyWith =>
      __$$TokoAndaResponseImplCopyWithImpl<_$TokoAndaResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TokoAndaResponseImplToJson(
      this,
    );
  }
}

abstract class _TokoAndaResponse implements TokoAndaResponse {
  const factory _TokoAndaResponse(
      {required final int code,
      required final String message,
      required final TokoAndaData? data}) = _$TokoAndaResponseImpl;

  factory _TokoAndaResponse.fromJson(Map<String, dynamic> json) =
      _$TokoAndaResponseImpl.fromJson;

  @override
  int get code;
  @override
  String get message;
  @override
  TokoAndaData? get data;
  @override
  @JsonKey(ignore: true)
  _$$TokoAndaResponseImplCopyWith<_$TokoAndaResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TokoAndaData _$TokoAndaDataFromJson(Map<String, dynamic> json) {
  return _TokoAndaData.fromJson(json);
}

/// @nodoc
mixin _$TokoAndaData {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get storeName => throw _privateConstructorUsedError;
  String get storeDescription => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  String get zipCode => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get website => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  bool get isActivev => throw _privateConstructorUsedError;
  int get locationLat => throw _privateConstructorUsedError;
  int get locationLng => throw _privateConstructorUsedError;
  List<TokoAndaTag> get tags => throw _privateConstructorUsedError;
  List<TokoAndaHour> get hours => throw _privateConstructorUsedError;
  List<TokoAndaImage> get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokoAndaDataCopyWith<TokoAndaData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokoAndaDataCopyWith<$Res> {
  factory $TokoAndaDataCopyWith(
          TokoAndaData value, $Res Function(TokoAndaData) then) =
      _$TokoAndaDataCopyWithImpl<$Res, TokoAndaData>;
  @useResult
  $Res call(
      {String id,
      String userId,
      String storeName,
      String storeDescription,
      String address,
      String city,
      String state,
      String zipCode,
      String phone,
      String email,
      String website,
      String status,
      bool isActivev,
      int locationLat,
      int locationLng,
      List<TokoAndaTag> tags,
      List<TokoAndaHour> hours,
      List<TokoAndaImage> images});
}

/// @nodoc
class _$TokoAndaDataCopyWithImpl<$Res, $Val extends TokoAndaData>
    implements $TokoAndaDataCopyWith<$Res> {
  _$TokoAndaDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? storeName = null,
    Object? storeDescription = null,
    Object? address = null,
    Object? city = null,
    Object? state = null,
    Object? zipCode = null,
    Object? phone = null,
    Object? email = null,
    Object? website = null,
    Object? status = null,
    Object? isActivev = null,
    Object? locationLat = null,
    Object? locationLng = null,
    Object? tags = null,
    Object? hours = null,
    Object? images = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      storeName: null == storeName
          ? _value.storeName
          : storeName // ignore: cast_nullable_to_non_nullable
              as String,
      storeDescription: null == storeDescription
          ? _value.storeDescription
          : storeDescription // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      zipCode: null == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      website: null == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      isActivev: null == isActivev
          ? _value.isActivev
          : isActivev // ignore: cast_nullable_to_non_nullable
              as bool,
      locationLat: null == locationLat
          ? _value.locationLat
          : locationLat // ignore: cast_nullable_to_non_nullable
              as int,
      locationLng: null == locationLng
          ? _value.locationLng
          : locationLng // ignore: cast_nullable_to_non_nullable
              as int,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<TokoAndaTag>,
      hours: null == hours
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as List<TokoAndaHour>,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<TokoAndaImage>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TokoAndaDataImplCopyWith<$Res>
    implements $TokoAndaDataCopyWith<$Res> {
  factory _$$TokoAndaDataImplCopyWith(
          _$TokoAndaDataImpl value, $Res Function(_$TokoAndaDataImpl) then) =
      __$$TokoAndaDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String storeName,
      String storeDescription,
      String address,
      String city,
      String state,
      String zipCode,
      String phone,
      String email,
      String website,
      String status,
      bool isActivev,
      int locationLat,
      int locationLng,
      List<TokoAndaTag> tags,
      List<TokoAndaHour> hours,
      List<TokoAndaImage> images});
}

/// @nodoc
class __$$TokoAndaDataImplCopyWithImpl<$Res>
    extends _$TokoAndaDataCopyWithImpl<$Res, _$TokoAndaDataImpl>
    implements _$$TokoAndaDataImplCopyWith<$Res> {
  __$$TokoAndaDataImplCopyWithImpl(
      _$TokoAndaDataImpl _value, $Res Function(_$TokoAndaDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? storeName = null,
    Object? storeDescription = null,
    Object? address = null,
    Object? city = null,
    Object? state = null,
    Object? zipCode = null,
    Object? phone = null,
    Object? email = null,
    Object? website = null,
    Object? status = null,
    Object? isActivev = null,
    Object? locationLat = null,
    Object? locationLng = null,
    Object? tags = null,
    Object? hours = null,
    Object? images = null,
  }) {
    return _then(_$TokoAndaDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      storeName: null == storeName
          ? _value.storeName
          : storeName // ignore: cast_nullable_to_non_nullable
              as String,
      storeDescription: null == storeDescription
          ? _value.storeDescription
          : storeDescription // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      zipCode: null == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      website: null == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      isActivev: null == isActivev
          ? _value.isActivev
          : isActivev // ignore: cast_nullable_to_non_nullable
              as bool,
      locationLat: null == locationLat
          ? _value.locationLat
          : locationLat // ignore: cast_nullable_to_non_nullable
              as int,
      locationLng: null == locationLng
          ? _value.locationLng
          : locationLng // ignore: cast_nullable_to_non_nullable
              as int,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<TokoAndaTag>,
      hours: null == hours
          ? _value._hours
          : hours // ignore: cast_nullable_to_non_nullable
              as List<TokoAndaHour>,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<TokoAndaImage>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TokoAndaDataImpl implements _TokoAndaData {
  const _$TokoAndaDataImpl(
      {required this.id,
      required this.userId,
      required this.storeName,
      required this.storeDescription,
      required this.address,
      required this.city,
      required this.state,
      required this.zipCode,
      required this.phone,
      required this.email,
      required this.website,
      required this.status,
      required this.isActivev,
      required this.locationLat,
      required this.locationLng,
      required final List<TokoAndaTag> tags,
      required final List<TokoAndaHour> hours,
      required final List<TokoAndaImage> images})
      : _tags = tags,
        _hours = hours,
        _images = images;

  factory _$TokoAndaDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokoAndaDataImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String storeName;
  @override
  final String storeDescription;
  @override
  final String address;
  @override
  final String city;
  @override
  final String state;
  @override
  final String zipCode;
  @override
  final String phone;
  @override
  final String email;
  @override
  final String website;
  @override
  final String status;
  @override
  final bool isActivev;
  @override
  final int locationLat;
  @override
  final int locationLng;
  final List<TokoAndaTag> _tags;
  @override
  List<TokoAndaTag> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  final List<TokoAndaHour> _hours;
  @override
  List<TokoAndaHour> get hours {
    if (_hours is EqualUnmodifiableListView) return _hours;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hours);
  }

  final List<TokoAndaImage> _images;
  @override
  List<TokoAndaImage> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'TokoAndaData(id: $id, userId: $userId, storeName: $storeName, storeDescription: $storeDescription, address: $address, city: $city, state: $state, zipCode: $zipCode, phone: $phone, email: $email, website: $website, status: $status, isActivev: $isActivev, locationLat: $locationLat, locationLng: $locationLng, tags: $tags, hours: $hours, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokoAndaDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.storeName, storeName) ||
                other.storeName == storeName) &&
            (identical(other.storeDescription, storeDescription) ||
                other.storeDescription == storeDescription) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isActivev, isActivev) ||
                other.isActivev == isActivev) &&
            (identical(other.locationLat, locationLat) ||
                other.locationLat == locationLat) &&
            (identical(other.locationLng, locationLng) ||
                other.locationLng == locationLng) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other._hours, _hours) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      storeName,
      storeDescription,
      address,
      city,
      state,
      zipCode,
      phone,
      email,
      website,
      status,
      isActivev,
      locationLat,
      locationLng,
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_hours),
      const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TokoAndaDataImplCopyWith<_$TokoAndaDataImpl> get copyWith =>
      __$$TokoAndaDataImplCopyWithImpl<_$TokoAndaDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TokoAndaDataImplToJson(
      this,
    );
  }
}

abstract class _TokoAndaData implements TokoAndaData {
  const factory _TokoAndaData(
      {required final String id,
      required final String userId,
      required final String storeName,
      required final String storeDescription,
      required final String address,
      required final String city,
      required final String state,
      required final String zipCode,
      required final String phone,
      required final String email,
      required final String website,
      required final String status,
      required final bool isActivev,
      required final int locationLat,
      required final int locationLng,
      required final List<TokoAndaTag> tags,
      required final List<TokoAndaHour> hours,
      required final List<TokoAndaImage> images}) = _$TokoAndaDataImpl;

  factory _TokoAndaData.fromJson(Map<String, dynamic> json) =
      _$TokoAndaDataImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get storeName;
  @override
  String get storeDescription;
  @override
  String get address;
  @override
  String get city;
  @override
  String get state;
  @override
  String get zipCode;
  @override
  String get phone;
  @override
  String get email;
  @override
  String get website;
  @override
  String get status;
  @override
  bool get isActivev;
  @override
  int get locationLat;
  @override
  int get locationLng;
  @override
  List<TokoAndaTag> get tags;
  @override
  List<TokoAndaHour> get hours;
  @override
  List<TokoAndaImage> get images;
  @override
  @JsonKey(ignore: true)
  _$$TokoAndaDataImplCopyWith<_$TokoAndaDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TokoAndaTag _$TokoAndaTagFromJson(Map<String, dynamic> json) {
  return _TokoAndaTag.fromJson(json);
}

/// @nodoc
mixin _$TokoAndaTag {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokoAndaTagCopyWith<TokoAndaTag> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokoAndaTagCopyWith<$Res> {
  factory $TokoAndaTagCopyWith(
          TokoAndaTag value, $Res Function(TokoAndaTag) then) =
      _$TokoAndaTagCopyWithImpl<$Res, TokoAndaTag>;
  @useResult
  $Res call({String id, String userId});
}

/// @nodoc
class _$TokoAndaTagCopyWithImpl<$Res, $Val extends TokoAndaTag>
    implements $TokoAndaTagCopyWith<$Res> {
  _$TokoAndaTagCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TokoAndaTagImplCopyWith<$Res>
    implements $TokoAndaTagCopyWith<$Res> {
  factory _$$TokoAndaTagImplCopyWith(
          _$TokoAndaTagImpl value, $Res Function(_$TokoAndaTagImpl) then) =
      __$$TokoAndaTagImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String userId});
}

/// @nodoc
class __$$TokoAndaTagImplCopyWithImpl<$Res>
    extends _$TokoAndaTagCopyWithImpl<$Res, _$TokoAndaTagImpl>
    implements _$$TokoAndaTagImplCopyWith<$Res> {
  __$$TokoAndaTagImplCopyWithImpl(
      _$TokoAndaTagImpl _value, $Res Function(_$TokoAndaTagImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
  }) {
    return _then(_$TokoAndaTagImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TokoAndaTagImpl implements _TokoAndaTag {
  const _$TokoAndaTagImpl({required this.id, required this.userId});

  factory _$TokoAndaTagImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokoAndaTagImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;

  @override
  String toString() {
    return 'TokoAndaTag(id: $id, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokoAndaTagImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TokoAndaTagImplCopyWith<_$TokoAndaTagImpl> get copyWith =>
      __$$TokoAndaTagImplCopyWithImpl<_$TokoAndaTagImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TokoAndaTagImplToJson(
      this,
    );
  }
}

abstract class _TokoAndaTag implements TokoAndaTag {
  const factory _TokoAndaTag(
      {required final String id,
      required final String userId}) = _$TokoAndaTagImpl;

  factory _TokoAndaTag.fromJson(Map<String, dynamic> json) =
      _$TokoAndaTagImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$$TokoAndaTagImplCopyWith<_$TokoAndaTagImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TokoAndaHour _$TokoAndaHourFromJson(Map<String, dynamic> json) {
  return _TokoAndaHour.fromJson(json);
}

/// @nodoc
mixin _$TokoAndaHour {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokoAndaHourCopyWith<TokoAndaHour> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokoAndaHourCopyWith<$Res> {
  factory $TokoAndaHourCopyWith(
          TokoAndaHour value, $Res Function(TokoAndaHour) then) =
      _$TokoAndaHourCopyWithImpl<$Res, TokoAndaHour>;
  @useResult
  $Res call({String id, String userId});
}

/// @nodoc
class _$TokoAndaHourCopyWithImpl<$Res, $Val extends TokoAndaHour>
    implements $TokoAndaHourCopyWith<$Res> {
  _$TokoAndaHourCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TokoAndaHourImplCopyWith<$Res>
    implements $TokoAndaHourCopyWith<$Res> {
  factory _$$TokoAndaHourImplCopyWith(
          _$TokoAndaHourImpl value, $Res Function(_$TokoAndaHourImpl) then) =
      __$$TokoAndaHourImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String userId});
}

/// @nodoc
class __$$TokoAndaHourImplCopyWithImpl<$Res>
    extends _$TokoAndaHourCopyWithImpl<$Res, _$TokoAndaHourImpl>
    implements _$$TokoAndaHourImplCopyWith<$Res> {
  __$$TokoAndaHourImplCopyWithImpl(
      _$TokoAndaHourImpl _value, $Res Function(_$TokoAndaHourImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
  }) {
    return _then(_$TokoAndaHourImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TokoAndaHourImpl implements _TokoAndaHour {
  const _$TokoAndaHourImpl({required this.id, required this.userId});

  factory _$TokoAndaHourImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokoAndaHourImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;

  @override
  String toString() {
    return 'TokoAndaHour(id: $id, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokoAndaHourImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TokoAndaHourImplCopyWith<_$TokoAndaHourImpl> get copyWith =>
      __$$TokoAndaHourImplCopyWithImpl<_$TokoAndaHourImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TokoAndaHourImplToJson(
      this,
    );
  }
}

abstract class _TokoAndaHour implements TokoAndaHour {
  const factory _TokoAndaHour(
      {required final String id,
      required final String userId}) = _$TokoAndaHourImpl;

  factory _TokoAndaHour.fromJson(Map<String, dynamic> json) =
      _$TokoAndaHourImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$$TokoAndaHourImplCopyWith<_$TokoAndaHourImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TokoAndaImage _$TokoAndaImageFromJson(Map<String, dynamic> json) {
  return _TokoAndaImage.fromJson(json);
}

/// @nodoc
mixin _$TokoAndaImage {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokoAndaImageCopyWith<TokoAndaImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokoAndaImageCopyWith<$Res> {
  factory $TokoAndaImageCopyWith(
          TokoAndaImage value, $Res Function(TokoAndaImage) then) =
      _$TokoAndaImageCopyWithImpl<$Res, TokoAndaImage>;
  @useResult
  $Res call({String id, String userId});
}

/// @nodoc
class _$TokoAndaImageCopyWithImpl<$Res, $Val extends TokoAndaImage>
    implements $TokoAndaImageCopyWith<$Res> {
  _$TokoAndaImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TokoAndaImageImplCopyWith<$Res>
    implements $TokoAndaImageCopyWith<$Res> {
  factory _$$TokoAndaImageImplCopyWith(
          _$TokoAndaImageImpl value, $Res Function(_$TokoAndaImageImpl) then) =
      __$$TokoAndaImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String userId});
}

/// @nodoc
class __$$TokoAndaImageImplCopyWithImpl<$Res>
    extends _$TokoAndaImageCopyWithImpl<$Res, _$TokoAndaImageImpl>
    implements _$$TokoAndaImageImplCopyWith<$Res> {
  __$$TokoAndaImageImplCopyWithImpl(
      _$TokoAndaImageImpl _value, $Res Function(_$TokoAndaImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
  }) {
    return _then(_$TokoAndaImageImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TokoAndaImageImpl implements _TokoAndaImage {
  const _$TokoAndaImageImpl({required this.id, required this.userId});

  factory _$TokoAndaImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokoAndaImageImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;

  @override
  String toString() {
    return 'TokoAndaImage(id: $id, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokoAndaImageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TokoAndaImageImplCopyWith<_$TokoAndaImageImpl> get copyWith =>
      __$$TokoAndaImageImplCopyWithImpl<_$TokoAndaImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TokoAndaImageImplToJson(
      this,
    );
  }
}

abstract class _TokoAndaImage implements TokoAndaImage {
  const factory _TokoAndaImage(
      {required final String id,
      required final String userId}) = _$TokoAndaImageImpl;

  factory _TokoAndaImage.fromJson(Map<String, dynamic> json) =
      _$TokoAndaImageImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$$TokoAndaImageImplCopyWith<_$TokoAndaImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
