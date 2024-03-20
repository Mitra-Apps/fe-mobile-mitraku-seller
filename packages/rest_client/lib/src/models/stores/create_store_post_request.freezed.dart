// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_store_post_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateStorePostRequest _$CreateStorePostRequestFromJson(
    Map<String, dynamic> json) {
  return _CreateStorePostRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateStorePostRequest {
  @JsonKey(name: 'storeName')
  String get storeName => throw _privateConstructorUsedError;
  @JsonKey(name: 'storeDescription')
  String get storeDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  String get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'city')
  String get city => throw _privateConstructorUsedError;
  @JsonKey(name: 'state')
  String get state => throw _privateConstructorUsedError;
  @JsonKey(name: 'zipCode')
  String get zipCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone')
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'website')
  String get website => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'isActive')
  bool get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'locationLat')
  int get locationLat => throw _privateConstructorUsedError;
  @JsonKey(name: 'locationLng')
  int get locationLng => throw _privateConstructorUsedError;
  @JsonKey(name: 'tags')
  List<Tag> get tags => throw _privateConstructorUsedError;
  @JsonKey(name: 'hours')
  List<CreateNewHour> get hours => throw _privateConstructorUsedError;
  @JsonKey(name: 'images')
  List<ImageStore> get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateStorePostRequestCopyWith<CreateStorePostRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateStorePostRequestCopyWith<$Res> {
  factory $CreateStorePostRequestCopyWith(CreateStorePostRequest value,
          $Res Function(CreateStorePostRequest) then) =
      _$CreateStorePostRequestCopyWithImpl<$Res, CreateStorePostRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'storeName') String storeName,
      @JsonKey(name: 'storeDescription') String storeDescription,
      @JsonKey(name: 'address') String address,
      @JsonKey(name: 'city') String city,
      @JsonKey(name: 'state') String state,
      @JsonKey(name: 'zipCode') String zipCode,
      @JsonKey(name: 'phone') String phone,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'website') String website,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'isActive') bool isActive,
      @JsonKey(name: 'locationLat') int locationLat,
      @JsonKey(name: 'locationLng') int locationLng,
      @JsonKey(name: 'tags') List<Tag> tags,
      @JsonKey(name: 'hours') List<CreateNewHour> hours,
      @JsonKey(name: 'images') List<ImageStore> images});
}

/// @nodoc
class _$CreateStorePostRequestCopyWithImpl<$Res,
        $Val extends CreateStorePostRequest>
    implements $CreateStorePostRequestCopyWith<$Res> {
  _$CreateStorePostRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
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
    Object? isActive = null,
    Object? locationLat = null,
    Object? locationLng = null,
    Object? tags = null,
    Object? hours = null,
    Object? images = null,
  }) {
    return _then(_value.copyWith(
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
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
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
              as List<Tag>,
      hours: null == hours
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as List<CreateNewHour>,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageStore>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateStorePostRequestImplCopyWith<$Res>
    implements $CreateStorePostRequestCopyWith<$Res> {
  factory _$$CreateStorePostRequestImplCopyWith(
          _$CreateStorePostRequestImpl value,
          $Res Function(_$CreateStorePostRequestImpl) then) =
      __$$CreateStorePostRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'storeName') String storeName,
      @JsonKey(name: 'storeDescription') String storeDescription,
      @JsonKey(name: 'address') String address,
      @JsonKey(name: 'city') String city,
      @JsonKey(name: 'state') String state,
      @JsonKey(name: 'zipCode') String zipCode,
      @JsonKey(name: 'phone') String phone,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'website') String website,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'isActive') bool isActive,
      @JsonKey(name: 'locationLat') int locationLat,
      @JsonKey(name: 'locationLng') int locationLng,
      @JsonKey(name: 'tags') List<Tag> tags,
      @JsonKey(name: 'hours') List<CreateNewHour> hours,
      @JsonKey(name: 'images') List<ImageStore> images});
}

/// @nodoc
class __$$CreateStorePostRequestImplCopyWithImpl<$Res>
    extends _$CreateStorePostRequestCopyWithImpl<$Res,
        _$CreateStorePostRequestImpl>
    implements _$$CreateStorePostRequestImplCopyWith<$Res> {
  __$$CreateStorePostRequestImplCopyWithImpl(
      _$CreateStorePostRequestImpl _value,
      $Res Function(_$CreateStorePostRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
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
    Object? isActive = null,
    Object? locationLat = null,
    Object? locationLng = null,
    Object? tags = null,
    Object? hours = null,
    Object? images = null,
  }) {
    return _then(_$CreateStorePostRequestImpl(
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
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
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
              as List<Tag>,
      hours: null == hours
          ? _value._hours
          : hours // ignore: cast_nullable_to_non_nullable
              as List<CreateNewHour>,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageStore>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateStorePostRequestImpl implements _CreateStorePostRequest {
  const _$CreateStorePostRequestImpl(
      {@JsonKey(name: 'storeName') required this.storeName,
      @JsonKey(name: 'storeDescription') required this.storeDescription,
      @JsonKey(name: 'address') required this.address,
      @JsonKey(name: 'city') required this.city,
      @JsonKey(name: 'state') required this.state,
      @JsonKey(name: 'zipCode') required this.zipCode,
      @JsonKey(name: 'phone') required this.phone,
      @JsonKey(name: 'email') required this.email,
      @JsonKey(name: 'website') required this.website,
      @JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'isActive') required this.isActive,
      @JsonKey(name: 'locationLat') required this.locationLat,
      @JsonKey(name: 'locationLng') required this.locationLng,
      @JsonKey(name: 'tags') required final List<Tag> tags,
      @JsonKey(name: 'hours') required final List<CreateNewHour> hours,
      @JsonKey(name: 'images') required final List<ImageStore> images})
      : _tags = tags,
        _hours = hours,
        _images = images;

  factory _$CreateStorePostRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateStorePostRequestImplFromJson(json);

  @override
  @JsonKey(name: 'storeName')
  final String storeName;
  @override
  @JsonKey(name: 'storeDescription')
  final String storeDescription;
  @override
  @JsonKey(name: 'address')
  final String address;
  @override
  @JsonKey(name: 'city')
  final String city;
  @override
  @JsonKey(name: 'state')
  final String state;
  @override
  @JsonKey(name: 'zipCode')
  final String zipCode;
  @override
  @JsonKey(name: 'phone')
  final String phone;
  @override
  @JsonKey(name: 'email')
  final String email;
  @override
  @JsonKey(name: 'website')
  final String website;
  @override
  @JsonKey(name: 'status')
  final String status;
  @override
  @JsonKey(name: 'isActive')
  final bool isActive;
  @override
  @JsonKey(name: 'locationLat')
  final int locationLat;
  @override
  @JsonKey(name: 'locationLng')
  final int locationLng;
  final List<Tag> _tags;
  @override
  @JsonKey(name: 'tags')
  List<Tag> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  final List<CreateNewHour> _hours;
  @override
  @JsonKey(name: 'hours')
  List<CreateNewHour> get hours {
    if (_hours is EqualUnmodifiableListView) return _hours;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hours);
  }

  final List<ImageStore> _images;
  @override
  @JsonKey(name: 'images')
  List<ImageStore> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'CreateStorePostRequest(storeName: $storeName, storeDescription: $storeDescription, address: $address, city: $city, state: $state, zipCode: $zipCode, phone: $phone, email: $email, website: $website, status: $status, isActive: $isActive, locationLat: $locationLat, locationLng: $locationLng, tags: $tags, hours: $hours, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateStorePostRequestImpl &&
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
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
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
      isActive,
      locationLat,
      locationLng,
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_hours),
      const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateStorePostRequestImplCopyWith<_$CreateStorePostRequestImpl>
      get copyWith => __$$CreateStorePostRequestImplCopyWithImpl<
          _$CreateStorePostRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateStorePostRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateStorePostRequest implements CreateStorePostRequest {
  const factory _CreateStorePostRequest(
      {@JsonKey(name: 'storeName') required final String storeName,
      @JsonKey(name: 'storeDescription') required final String storeDescription,
      @JsonKey(name: 'address') required final String address,
      @JsonKey(name: 'city') required final String city,
      @JsonKey(name: 'state') required final String state,
      @JsonKey(name: 'zipCode') required final String zipCode,
      @JsonKey(name: 'phone') required final String phone,
      @JsonKey(name: 'email') required final String email,
      @JsonKey(name: 'website') required final String website,
      @JsonKey(name: 'status') required final String status,
      @JsonKey(name: 'isActive') required final bool isActive,
      @JsonKey(name: 'locationLat') required final int locationLat,
      @JsonKey(name: 'locationLng') required final int locationLng,
      @JsonKey(name: 'tags') required final List<Tag> tags,
      @JsonKey(name: 'hours') required final List<CreateNewHour> hours,
      @JsonKey(name: 'images')
      required final List<ImageStore> images}) = _$CreateStorePostRequestImpl;

  factory _CreateStorePostRequest.fromJson(Map<String, dynamic> json) =
      _$CreateStorePostRequestImpl.fromJson;

  @override
  @JsonKey(name: 'storeName')
  String get storeName;
  @override
  @JsonKey(name: 'storeDescription')
  String get storeDescription;
  @override
  @JsonKey(name: 'address')
  String get address;
  @override
  @JsonKey(name: 'city')
  String get city;
  @override
  @JsonKey(name: 'state')
  String get state;
  @override
  @JsonKey(name: 'zipCode')
  String get zipCode;
  @override
  @JsonKey(name: 'phone')
  String get phone;
  @override
  @JsonKey(name: 'email')
  String get email;
  @override
  @JsonKey(name: 'website')
  String get website;
  @override
  @JsonKey(name: 'status')
  String get status;
  @override
  @JsonKey(name: 'isActive')
  bool get isActive;
  @override
  @JsonKey(name: 'locationLat')
  int get locationLat;
  @override
  @JsonKey(name: 'locationLng')
  int get locationLng;
  @override
  @JsonKey(name: 'tags')
  List<Tag> get tags;
  @override
  @JsonKey(name: 'hours')
  List<CreateNewHour> get hours;
  @override
  @JsonKey(name: 'images')
  List<ImageStore> get images;
  @override
  @JsonKey(ignore: true)
  _$$CreateStorePostRequestImplCopyWith<_$CreateStorePostRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CreateNewHour _$CreateNewHourFromJson(Map<String, dynamic> json) {
  return _CreateNewHour.fromJson(json);
}

/// @nodoc
mixin _$CreateNewHour {
  @JsonKey(name: 'dayOfWeek')
  int get dayOfWeek => throw _privateConstructorUsedError;
  @JsonKey(name: 'open')
  String get open => throw _privateConstructorUsedError;
  @JsonKey(name: 'close')
  String get close => throw _privateConstructorUsedError;
  @JsonKey(name: 'is24hours')
  bool get is24Hours => throw _privateConstructorUsedError;
  @JsonKey(name: 'isOpen')
  bool get isOpen => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateNewHourCopyWith<CreateNewHour> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateNewHourCopyWith<$Res> {
  factory $CreateNewHourCopyWith(
          CreateNewHour value, $Res Function(CreateNewHour) then) =
      _$CreateNewHourCopyWithImpl<$Res, CreateNewHour>;
  @useResult
  $Res call(
      {@JsonKey(name: 'dayOfWeek') int dayOfWeek,
      @JsonKey(name: 'open') String open,
      @JsonKey(name: 'close') String close,
      @JsonKey(name: 'is24hours') bool is24Hours,
      @JsonKey(name: 'isOpen') bool isOpen});
}

/// @nodoc
class _$CreateNewHourCopyWithImpl<$Res, $Val extends CreateNewHour>
    implements $CreateNewHourCopyWith<$Res> {
  _$CreateNewHourCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dayOfWeek = null,
    Object? open = null,
    Object? close = null,
    Object? is24Hours = null,
    Object? isOpen = null,
  }) {
    return _then(_value.copyWith(
      dayOfWeek: null == dayOfWeek
          ? _value.dayOfWeek
          : dayOfWeek // ignore: cast_nullable_to_non_nullable
              as int,
      open: null == open
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as String,
      close: null == close
          ? _value.close
          : close // ignore: cast_nullable_to_non_nullable
              as String,
      is24Hours: null == is24Hours
          ? _value.is24Hours
          : is24Hours // ignore: cast_nullable_to_non_nullable
              as bool,
      isOpen: null == isOpen
          ? _value.isOpen
          : isOpen // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateNewHourImplCopyWith<$Res>
    implements $CreateNewHourCopyWith<$Res> {
  factory _$$CreateNewHourImplCopyWith(
          _$CreateNewHourImpl value, $Res Function(_$CreateNewHourImpl) then) =
      __$$CreateNewHourImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'dayOfWeek') int dayOfWeek,
      @JsonKey(name: 'open') String open,
      @JsonKey(name: 'close') String close,
      @JsonKey(name: 'is24hours') bool is24Hours,
      @JsonKey(name: 'isOpen') bool isOpen});
}

/// @nodoc
class __$$CreateNewHourImplCopyWithImpl<$Res>
    extends _$CreateNewHourCopyWithImpl<$Res, _$CreateNewHourImpl>
    implements _$$CreateNewHourImplCopyWith<$Res> {
  __$$CreateNewHourImplCopyWithImpl(
      _$CreateNewHourImpl _value, $Res Function(_$CreateNewHourImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dayOfWeek = null,
    Object? open = null,
    Object? close = null,
    Object? is24Hours = null,
    Object? isOpen = null,
  }) {
    return _then(_$CreateNewHourImpl(
      dayOfWeek: null == dayOfWeek
          ? _value.dayOfWeek
          : dayOfWeek // ignore: cast_nullable_to_non_nullable
              as int,
      open: null == open
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as String,
      close: null == close
          ? _value.close
          : close // ignore: cast_nullable_to_non_nullable
              as String,
      is24Hours: null == is24Hours
          ? _value.is24Hours
          : is24Hours // ignore: cast_nullable_to_non_nullable
              as bool,
      isOpen: null == isOpen
          ? _value.isOpen
          : isOpen // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateNewHourImpl implements _CreateNewHour {
  const _$CreateNewHourImpl(
      {@JsonKey(name: 'dayOfWeek') required this.dayOfWeek,
      @JsonKey(name: 'open') required this.open,
      @JsonKey(name: 'close') required this.close,
      @JsonKey(name: 'is24hours') required this.is24Hours,
      @JsonKey(name: 'isOpen') required this.isOpen});

  factory _$CreateNewHourImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateNewHourImplFromJson(json);

  @override
  @JsonKey(name: 'dayOfWeek')
  final int dayOfWeek;
  @override
  @JsonKey(name: 'open')
  final String open;
  @override
  @JsonKey(name: 'close')
  final String close;
  @override
  @JsonKey(name: 'is24hours')
  final bool is24Hours;
  @override
  @JsonKey(name: 'isOpen')
  final bool isOpen;

  @override
  String toString() {
    return 'CreateNewHour(dayOfWeek: $dayOfWeek, open: $open, close: $close, is24Hours: $is24Hours, isOpen: $isOpen)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateNewHourImpl &&
            (identical(other.dayOfWeek, dayOfWeek) ||
                other.dayOfWeek == dayOfWeek) &&
            (identical(other.open, open) || other.open == open) &&
            (identical(other.close, close) || other.close == close) &&
            (identical(other.is24Hours, is24Hours) ||
                other.is24Hours == is24Hours) &&
            (identical(other.isOpen, isOpen) || other.isOpen == isOpen));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, dayOfWeek, open, close, is24Hours, isOpen);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateNewHourImplCopyWith<_$CreateNewHourImpl> get copyWith =>
      __$$CreateNewHourImplCopyWithImpl<_$CreateNewHourImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateNewHourImplToJson(
      this,
    );
  }
}

abstract class _CreateNewHour implements CreateNewHour {
  const factory _CreateNewHour(
          {@JsonKey(name: 'dayOfWeek') required final int dayOfWeek,
          @JsonKey(name: 'open') required final String open,
          @JsonKey(name: 'close') required final String close,
          @JsonKey(name: 'is24hours') required final bool is24Hours,
          @JsonKey(name: 'isOpen') required final bool isOpen}) =
      _$CreateNewHourImpl;

  factory _CreateNewHour.fromJson(Map<String, dynamic> json) =
      _$CreateNewHourImpl.fromJson;

  @override
  @JsonKey(name: 'dayOfWeek')
  int get dayOfWeek;
  @override
  @JsonKey(name: 'open')
  String get open;
  @override
  @JsonKey(name: 'close')
  String get close;
  @override
  @JsonKey(name: 'is24hours')
  bool get is24Hours;
  @override
  @JsonKey(name: 'isOpen')
  bool get isOpen;
  @override
  @JsonKey(ignore: true)
  _$$CreateNewHourImplCopyWith<_$CreateNewHourImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
