// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'your_store_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$YourStoreEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMyStoreRequest,
    required TResult Function(CreateStorePostRequest createStorePostRequest)
        postCreateStoreRequest,
    required TResult Function(
            String storeId, EditStorePutRequest editStorePutRequest)
        putEditStoreRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getMyStoreRequest,
    TResult? Function(CreateStorePostRequest createStorePostRequest)?
        postCreateStoreRequest,
    TResult? Function(String storeId, EditStorePutRequest editStorePutRequest)?
        putEditStoreRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMyStoreRequest,
    TResult Function(CreateStorePostRequest createStorePostRequest)?
        postCreateStoreRequest,
    TResult Function(String storeId, EditStorePutRequest editStorePutRequest)?
        putEditStoreRequest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMyStoreRequest value) getMyStoreRequest,
    required TResult Function(_PostCreateStoreRequest value)
        postCreateStoreRequest,
    required TResult Function(_PutEditStoreRequest value) putEditStoreRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMyStoreRequest value)? getMyStoreRequest,
    TResult? Function(_PostCreateStoreRequest value)? postCreateStoreRequest,
    TResult? Function(_PutEditStoreRequest value)? putEditStoreRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMyStoreRequest value)? getMyStoreRequest,
    TResult Function(_PostCreateStoreRequest value)? postCreateStoreRequest,
    TResult Function(_PutEditStoreRequest value)? putEditStoreRequest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YourStoreEventCopyWith<$Res> {
  factory $YourStoreEventCopyWith(
          YourStoreEvent value, $Res Function(YourStoreEvent) then) =
      _$YourStoreEventCopyWithImpl<$Res, YourStoreEvent>;
}

/// @nodoc
class _$YourStoreEventCopyWithImpl<$Res, $Val extends YourStoreEvent>
    implements $YourStoreEventCopyWith<$Res> {
  _$YourStoreEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetMyStoreRequestImplCopyWith<$Res> {
  factory _$$GetMyStoreRequestImplCopyWith(_$GetMyStoreRequestImpl value,
          $Res Function(_$GetMyStoreRequestImpl) then) =
      __$$GetMyStoreRequestImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetMyStoreRequestImplCopyWithImpl<$Res>
    extends _$YourStoreEventCopyWithImpl<$Res, _$GetMyStoreRequestImpl>
    implements _$$GetMyStoreRequestImplCopyWith<$Res> {
  __$$GetMyStoreRequestImplCopyWithImpl(_$GetMyStoreRequestImpl _value,
      $Res Function(_$GetMyStoreRequestImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetMyStoreRequestImpl implements _GetMyStoreRequest {
  const _$GetMyStoreRequestImpl();

  @override
  String toString() {
    return 'YourStoreEvent.getMyStoreRequest()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetMyStoreRequestImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMyStoreRequest,
    required TResult Function(CreateStorePostRequest createStorePostRequest)
        postCreateStoreRequest,
    required TResult Function(
            String storeId, EditStorePutRequest editStorePutRequest)
        putEditStoreRequest,
  }) {
    return getMyStoreRequest();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getMyStoreRequest,
    TResult? Function(CreateStorePostRequest createStorePostRequest)?
        postCreateStoreRequest,
    TResult? Function(String storeId, EditStorePutRequest editStorePutRequest)?
        putEditStoreRequest,
  }) {
    return getMyStoreRequest?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMyStoreRequest,
    TResult Function(CreateStorePostRequest createStorePostRequest)?
        postCreateStoreRequest,
    TResult Function(String storeId, EditStorePutRequest editStorePutRequest)?
        putEditStoreRequest,
    required TResult orElse(),
  }) {
    if (getMyStoreRequest != null) {
      return getMyStoreRequest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMyStoreRequest value) getMyStoreRequest,
    required TResult Function(_PostCreateStoreRequest value)
        postCreateStoreRequest,
    required TResult Function(_PutEditStoreRequest value) putEditStoreRequest,
  }) {
    return getMyStoreRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMyStoreRequest value)? getMyStoreRequest,
    TResult? Function(_PostCreateStoreRequest value)? postCreateStoreRequest,
    TResult? Function(_PutEditStoreRequest value)? putEditStoreRequest,
  }) {
    return getMyStoreRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMyStoreRequest value)? getMyStoreRequest,
    TResult Function(_PostCreateStoreRequest value)? postCreateStoreRequest,
    TResult Function(_PutEditStoreRequest value)? putEditStoreRequest,
    required TResult orElse(),
  }) {
    if (getMyStoreRequest != null) {
      return getMyStoreRequest(this);
    }
    return orElse();
  }
}

abstract class _GetMyStoreRequest implements YourStoreEvent {
  const factory _GetMyStoreRequest() = _$GetMyStoreRequestImpl;
}

/// @nodoc
abstract class _$$PostCreateStoreRequestImplCopyWith<$Res> {
  factory _$$PostCreateStoreRequestImplCopyWith(
          _$PostCreateStoreRequestImpl value,
          $Res Function(_$PostCreateStoreRequestImpl) then) =
      __$$PostCreateStoreRequestImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateStorePostRequest createStorePostRequest});

  $CreateStorePostRequestCopyWith<$Res> get createStorePostRequest;
}

/// @nodoc
class __$$PostCreateStoreRequestImplCopyWithImpl<$Res>
    extends _$YourStoreEventCopyWithImpl<$Res, _$PostCreateStoreRequestImpl>
    implements _$$PostCreateStoreRequestImplCopyWith<$Res> {
  __$$PostCreateStoreRequestImplCopyWithImpl(
      _$PostCreateStoreRequestImpl _value,
      $Res Function(_$PostCreateStoreRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createStorePostRequest = null,
  }) {
    return _then(_$PostCreateStoreRequestImpl(
      null == createStorePostRequest
          ? _value.createStorePostRequest
          : createStorePostRequest // ignore: cast_nullable_to_non_nullable
              as CreateStorePostRequest,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CreateStorePostRequestCopyWith<$Res> get createStorePostRequest {
    return $CreateStorePostRequestCopyWith<$Res>(_value.createStorePostRequest,
        (value) {
      return _then(_value.copyWith(createStorePostRequest: value));
    });
  }
}

/// @nodoc

class _$PostCreateStoreRequestImpl implements _PostCreateStoreRequest {
  const _$PostCreateStoreRequestImpl(this.createStorePostRequest);

  @override
  final CreateStorePostRequest createStorePostRequest;

  @override
  String toString() {
    return 'YourStoreEvent.postCreateStoreRequest(createStorePostRequest: $createStorePostRequest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostCreateStoreRequestImpl &&
            (identical(other.createStorePostRequest, createStorePostRequest) ||
                other.createStorePostRequest == createStorePostRequest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, createStorePostRequest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostCreateStoreRequestImplCopyWith<_$PostCreateStoreRequestImpl>
      get copyWith => __$$PostCreateStoreRequestImplCopyWithImpl<
          _$PostCreateStoreRequestImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMyStoreRequest,
    required TResult Function(CreateStorePostRequest createStorePostRequest)
        postCreateStoreRequest,
    required TResult Function(
            String storeId, EditStorePutRequest editStorePutRequest)
        putEditStoreRequest,
  }) {
    return postCreateStoreRequest(createStorePostRequest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getMyStoreRequest,
    TResult? Function(CreateStorePostRequest createStorePostRequest)?
        postCreateStoreRequest,
    TResult? Function(String storeId, EditStorePutRequest editStorePutRequest)?
        putEditStoreRequest,
  }) {
    return postCreateStoreRequest?.call(createStorePostRequest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMyStoreRequest,
    TResult Function(CreateStorePostRequest createStorePostRequest)?
        postCreateStoreRequest,
    TResult Function(String storeId, EditStorePutRequest editStorePutRequest)?
        putEditStoreRequest,
    required TResult orElse(),
  }) {
    if (postCreateStoreRequest != null) {
      return postCreateStoreRequest(createStorePostRequest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMyStoreRequest value) getMyStoreRequest,
    required TResult Function(_PostCreateStoreRequest value)
        postCreateStoreRequest,
    required TResult Function(_PutEditStoreRequest value) putEditStoreRequest,
  }) {
    return postCreateStoreRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMyStoreRequest value)? getMyStoreRequest,
    TResult? Function(_PostCreateStoreRequest value)? postCreateStoreRequest,
    TResult? Function(_PutEditStoreRequest value)? putEditStoreRequest,
  }) {
    return postCreateStoreRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMyStoreRequest value)? getMyStoreRequest,
    TResult Function(_PostCreateStoreRequest value)? postCreateStoreRequest,
    TResult Function(_PutEditStoreRequest value)? putEditStoreRequest,
    required TResult orElse(),
  }) {
    if (postCreateStoreRequest != null) {
      return postCreateStoreRequest(this);
    }
    return orElse();
  }
}

abstract class _PostCreateStoreRequest implements YourStoreEvent {
  const factory _PostCreateStoreRequest(
          final CreateStorePostRequest createStorePostRequest) =
      _$PostCreateStoreRequestImpl;

  CreateStorePostRequest get createStorePostRequest;
  @JsonKey(ignore: true)
  _$$PostCreateStoreRequestImplCopyWith<_$PostCreateStoreRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PutEditStoreRequestImplCopyWith<$Res> {
  factory _$$PutEditStoreRequestImplCopyWith(_$PutEditStoreRequestImpl value,
          $Res Function(_$PutEditStoreRequestImpl) then) =
      __$$PutEditStoreRequestImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String storeId, EditStorePutRequest editStorePutRequest});

  $EditStorePutRequestCopyWith<$Res> get editStorePutRequest;
}

/// @nodoc
class __$$PutEditStoreRequestImplCopyWithImpl<$Res>
    extends _$YourStoreEventCopyWithImpl<$Res, _$PutEditStoreRequestImpl>
    implements _$$PutEditStoreRequestImplCopyWith<$Res> {
  __$$PutEditStoreRequestImplCopyWithImpl(_$PutEditStoreRequestImpl _value,
      $Res Function(_$PutEditStoreRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? storeId = null,
    Object? editStorePutRequest = null,
  }) {
    return _then(_$PutEditStoreRequestImpl(
      storeId: null == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String,
      editStorePutRequest: null == editStorePutRequest
          ? _value.editStorePutRequest
          : editStorePutRequest // ignore: cast_nullable_to_non_nullable
              as EditStorePutRequest,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $EditStorePutRequestCopyWith<$Res> get editStorePutRequest {
    return $EditStorePutRequestCopyWith<$Res>(_value.editStorePutRequest,
        (value) {
      return _then(_value.copyWith(editStorePutRequest: value));
    });
  }
}

/// @nodoc

class _$PutEditStoreRequestImpl implements _PutEditStoreRequest {
  const _$PutEditStoreRequestImpl(
      {required this.storeId, required this.editStorePutRequest});

  @override
  final String storeId;
  @override
  final EditStorePutRequest editStorePutRequest;

  @override
  String toString() {
    return 'YourStoreEvent.putEditStoreRequest(storeId: $storeId, editStorePutRequest: $editStorePutRequest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PutEditStoreRequestImpl &&
            (identical(other.storeId, storeId) || other.storeId == storeId) &&
            (identical(other.editStorePutRequest, editStorePutRequest) ||
                other.editStorePutRequest == editStorePutRequest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, storeId, editStorePutRequest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PutEditStoreRequestImplCopyWith<_$PutEditStoreRequestImpl> get copyWith =>
      __$$PutEditStoreRequestImplCopyWithImpl<_$PutEditStoreRequestImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMyStoreRequest,
    required TResult Function(CreateStorePostRequest createStorePostRequest)
        postCreateStoreRequest,
    required TResult Function(
            String storeId, EditStorePutRequest editStorePutRequest)
        putEditStoreRequest,
  }) {
    return putEditStoreRequest(storeId, editStorePutRequest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getMyStoreRequest,
    TResult? Function(CreateStorePostRequest createStorePostRequest)?
        postCreateStoreRequest,
    TResult? Function(String storeId, EditStorePutRequest editStorePutRequest)?
        putEditStoreRequest,
  }) {
    return putEditStoreRequest?.call(storeId, editStorePutRequest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMyStoreRequest,
    TResult Function(CreateStorePostRequest createStorePostRequest)?
        postCreateStoreRequest,
    TResult Function(String storeId, EditStorePutRequest editStorePutRequest)?
        putEditStoreRequest,
    required TResult orElse(),
  }) {
    if (putEditStoreRequest != null) {
      return putEditStoreRequest(storeId, editStorePutRequest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMyStoreRequest value) getMyStoreRequest,
    required TResult Function(_PostCreateStoreRequest value)
        postCreateStoreRequest,
    required TResult Function(_PutEditStoreRequest value) putEditStoreRequest,
  }) {
    return putEditStoreRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMyStoreRequest value)? getMyStoreRequest,
    TResult? Function(_PostCreateStoreRequest value)? postCreateStoreRequest,
    TResult? Function(_PutEditStoreRequest value)? putEditStoreRequest,
  }) {
    return putEditStoreRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMyStoreRequest value)? getMyStoreRequest,
    TResult Function(_PostCreateStoreRequest value)? postCreateStoreRequest,
    TResult Function(_PutEditStoreRequest value)? putEditStoreRequest,
    required TResult orElse(),
  }) {
    if (putEditStoreRequest != null) {
      return putEditStoreRequest(this);
    }
    return orElse();
  }
}

abstract class _PutEditStoreRequest implements YourStoreEvent {
  const factory _PutEditStoreRequest(
          {required final String storeId,
          required final EditStorePutRequest editStorePutRequest}) =
      _$PutEditStoreRequestImpl;

  String get storeId;
  EditStorePutRequest get editStorePutRequest;
  @JsonKey(ignore: true)
  _$$PutEditStoreRequestImplCopyWith<_$PutEditStoreRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$YourStoreNotification {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) notifySuccess,
    required TResult Function(String message) notifyFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? notifySuccess,
    TResult? Function(String message)? notifyFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? notifySuccess,
    TResult Function(String message)? notifyFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotificationNotifySuccess value) notifySuccess,
    required TResult Function(_NotificationNotifyFailed value) notifyFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotificationNotifySuccess value)? notifySuccess,
    TResult? Function(_NotificationNotifyFailed value)? notifyFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotificationNotifySuccess value)? notifySuccess,
    TResult Function(_NotificationNotifyFailed value)? notifyFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $YourStoreNotificationCopyWith<YourStoreNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YourStoreNotificationCopyWith<$Res> {
  factory $YourStoreNotificationCopyWith(YourStoreNotification value,
          $Res Function(YourStoreNotification) then) =
      _$YourStoreNotificationCopyWithImpl<$Res, YourStoreNotification>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$YourStoreNotificationCopyWithImpl<$Res,
        $Val extends YourStoreNotification>
    implements $YourStoreNotificationCopyWith<$Res> {
  _$YourStoreNotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationNotifySuccessImplCopyWith<$Res>
    implements $YourStoreNotificationCopyWith<$Res> {
  factory _$$NotificationNotifySuccessImplCopyWith(
          _$NotificationNotifySuccessImpl value,
          $Res Function(_$NotificationNotifySuccessImpl) then) =
      __$$NotificationNotifySuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$NotificationNotifySuccessImplCopyWithImpl<$Res>
    extends _$YourStoreNotificationCopyWithImpl<$Res,
        _$NotificationNotifySuccessImpl>
    implements _$$NotificationNotifySuccessImplCopyWith<$Res> {
  __$$NotificationNotifySuccessImplCopyWithImpl(
      _$NotificationNotifySuccessImpl _value,
      $Res Function(_$NotificationNotifySuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$NotificationNotifySuccessImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NotificationNotifySuccessImpl implements _NotificationNotifySuccess {
  _$NotificationNotifySuccessImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'YourStoreNotification.notifySuccess(message: $message)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationNotifySuccessImplCopyWith<_$NotificationNotifySuccessImpl>
      get copyWith => __$$NotificationNotifySuccessImplCopyWithImpl<
          _$NotificationNotifySuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) notifySuccess,
    required TResult Function(String message) notifyFailed,
  }) {
    return notifySuccess(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? notifySuccess,
    TResult? Function(String message)? notifyFailed,
  }) {
    return notifySuccess?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? notifySuccess,
    TResult Function(String message)? notifyFailed,
    required TResult orElse(),
  }) {
    if (notifySuccess != null) {
      return notifySuccess(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotificationNotifySuccess value) notifySuccess,
    required TResult Function(_NotificationNotifyFailed value) notifyFailed,
  }) {
    return notifySuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotificationNotifySuccess value)? notifySuccess,
    TResult? Function(_NotificationNotifyFailed value)? notifyFailed,
  }) {
    return notifySuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotificationNotifySuccess value)? notifySuccess,
    TResult Function(_NotificationNotifyFailed value)? notifyFailed,
    required TResult orElse(),
  }) {
    if (notifySuccess != null) {
      return notifySuccess(this);
    }
    return orElse();
  }
}

abstract class _NotificationNotifySuccess implements YourStoreNotification {
  factory _NotificationNotifySuccess({required final String message}) =
      _$NotificationNotifySuccessImpl;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$NotificationNotifySuccessImplCopyWith<_$NotificationNotifySuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotificationNotifyFailedImplCopyWith<$Res>
    implements $YourStoreNotificationCopyWith<$Res> {
  factory _$$NotificationNotifyFailedImplCopyWith(
          _$NotificationNotifyFailedImpl value,
          $Res Function(_$NotificationNotifyFailedImpl) then) =
      __$$NotificationNotifyFailedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$NotificationNotifyFailedImplCopyWithImpl<$Res>
    extends _$YourStoreNotificationCopyWithImpl<$Res,
        _$NotificationNotifyFailedImpl>
    implements _$$NotificationNotifyFailedImplCopyWith<$Res> {
  __$$NotificationNotifyFailedImplCopyWithImpl(
      _$NotificationNotifyFailedImpl _value,
      $Res Function(_$NotificationNotifyFailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$NotificationNotifyFailedImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NotificationNotifyFailedImpl implements _NotificationNotifyFailed {
  _$NotificationNotifyFailedImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'YourStoreNotification.notifyFailed(message: $message)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationNotifyFailedImplCopyWith<_$NotificationNotifyFailedImpl>
      get copyWith => __$$NotificationNotifyFailedImplCopyWithImpl<
          _$NotificationNotifyFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) notifySuccess,
    required TResult Function(String message) notifyFailed,
  }) {
    return notifyFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? notifySuccess,
    TResult? Function(String message)? notifyFailed,
  }) {
    return notifyFailed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? notifySuccess,
    TResult Function(String message)? notifyFailed,
    required TResult orElse(),
  }) {
    if (notifyFailed != null) {
      return notifyFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotificationNotifySuccess value) notifySuccess,
    required TResult Function(_NotificationNotifyFailed value) notifyFailed,
  }) {
    return notifyFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotificationNotifySuccess value)? notifySuccess,
    TResult? Function(_NotificationNotifyFailed value)? notifyFailed,
  }) {
    return notifyFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotificationNotifySuccess value)? notifySuccess,
    TResult Function(_NotificationNotifyFailed value)? notifyFailed,
    required TResult orElse(),
  }) {
    if (notifyFailed != null) {
      return notifyFailed(this);
    }
    return orElse();
  }
}

abstract class _NotificationNotifyFailed implements YourStoreNotification {
  factory _NotificationNotifyFailed({required final String message}) =
      _$NotificationNotifyFailedImpl;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$NotificationNotifyFailedImplCopyWith<_$NotificationNotifyFailedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$YourStoreState {
  UIStatus get status => throw _privateConstructorUsedError;
  bool get isBusy => throw _privateConstructorUsedError;
  YourStoreNotification? get notification => throw _privateConstructorUsedError;
  MyStoreResponse? get myStoreResponse => throw _privateConstructorUsedError;
  CreateStorePostRequest? get createStorePostRequest =>
      throw _privateConstructorUsedError;
  EditStorePutRequest? get editStorePutRequest =>
      throw _privateConstructorUsedError;
  ErrorResponse? get errorResponse => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $YourStoreStateCopyWith<YourStoreState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YourStoreStateCopyWith<$Res> {
  factory $YourStoreStateCopyWith(
          YourStoreState value, $Res Function(YourStoreState) then) =
      _$YourStoreStateCopyWithImpl<$Res, YourStoreState>;
  @useResult
  $Res call(
      {UIStatus status,
      bool isBusy,
      YourStoreNotification? notification,
      MyStoreResponse? myStoreResponse,
      CreateStorePostRequest? createStorePostRequest,
      EditStorePutRequest? editStorePutRequest,
      ErrorResponse? errorResponse});

  $UIStatusCopyWith<$Res> get status;
  $YourStoreNotificationCopyWith<$Res>? get notification;
  $MyStoreResponseCopyWith<$Res>? get myStoreResponse;
  $CreateStorePostRequestCopyWith<$Res>? get createStorePostRequest;
  $EditStorePutRequestCopyWith<$Res>? get editStorePutRequest;
  $ErrorResponseCopyWith<$Res>? get errorResponse;
}

/// @nodoc
class _$YourStoreStateCopyWithImpl<$Res, $Val extends YourStoreState>
    implements $YourStoreStateCopyWith<$Res> {
  _$YourStoreStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? isBusy = null,
    Object? notification = freezed,
    Object? myStoreResponse = freezed,
    Object? createStorePostRequest = freezed,
    Object? editStorePutRequest = freezed,
    Object? errorResponse = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UIStatus,
      isBusy: null == isBusy
          ? _value.isBusy
          : isBusy // ignore: cast_nullable_to_non_nullable
              as bool,
      notification: freezed == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as YourStoreNotification?,
      myStoreResponse: freezed == myStoreResponse
          ? _value.myStoreResponse
          : myStoreResponse // ignore: cast_nullable_to_non_nullable
              as MyStoreResponse?,
      createStorePostRequest: freezed == createStorePostRequest
          ? _value.createStorePostRequest
          : createStorePostRequest // ignore: cast_nullable_to_non_nullable
              as CreateStorePostRequest?,
      editStorePutRequest: freezed == editStorePutRequest
          ? _value.editStorePutRequest
          : editStorePutRequest // ignore: cast_nullable_to_non_nullable
              as EditStorePutRequest?,
      errorResponse: freezed == errorResponse
          ? _value.errorResponse
          : errorResponse // ignore: cast_nullable_to_non_nullable
              as ErrorResponse?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UIStatusCopyWith<$Res> get status {
    return $UIStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $YourStoreNotificationCopyWith<$Res>? get notification {
    if (_value.notification == null) {
      return null;
    }

    return $YourStoreNotificationCopyWith<$Res>(_value.notification!, (value) {
      return _then(_value.copyWith(notification: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MyStoreResponseCopyWith<$Res>? get myStoreResponse {
    if (_value.myStoreResponse == null) {
      return null;
    }

    return $MyStoreResponseCopyWith<$Res>(_value.myStoreResponse!, (value) {
      return _then(_value.copyWith(myStoreResponse: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CreateStorePostRequestCopyWith<$Res>? get createStorePostRequest {
    if (_value.createStorePostRequest == null) {
      return null;
    }

    return $CreateStorePostRequestCopyWith<$Res>(_value.createStorePostRequest!,
        (value) {
      return _then(_value.copyWith(createStorePostRequest: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EditStorePutRequestCopyWith<$Res>? get editStorePutRequest {
    if (_value.editStorePutRequest == null) {
      return null;
    }

    return $EditStorePutRequestCopyWith<$Res>(_value.editStorePutRequest!,
        (value) {
      return _then(_value.copyWith(editStorePutRequest: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ErrorResponseCopyWith<$Res>? get errorResponse {
    if (_value.errorResponse == null) {
      return null;
    }

    return $ErrorResponseCopyWith<$Res>(_value.errorResponse!, (value) {
      return _then(_value.copyWith(errorResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$YourStoreStateImplCopyWith<$Res>
    implements $YourStoreStateCopyWith<$Res> {
  factory _$$YourStoreStateImplCopyWith(_$YourStoreStateImpl value,
          $Res Function(_$YourStoreStateImpl) then) =
      __$$YourStoreStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UIStatus status,
      bool isBusy,
      YourStoreNotification? notification,
      MyStoreResponse? myStoreResponse,
      CreateStorePostRequest? createStorePostRequest,
      EditStorePutRequest? editStorePutRequest,
      ErrorResponse? errorResponse});

  @override
  $UIStatusCopyWith<$Res> get status;
  @override
  $YourStoreNotificationCopyWith<$Res>? get notification;
  @override
  $MyStoreResponseCopyWith<$Res>? get myStoreResponse;
  @override
  $CreateStorePostRequestCopyWith<$Res>? get createStorePostRequest;
  @override
  $EditStorePutRequestCopyWith<$Res>? get editStorePutRequest;
  @override
  $ErrorResponseCopyWith<$Res>? get errorResponse;
}

/// @nodoc
class __$$YourStoreStateImplCopyWithImpl<$Res>
    extends _$YourStoreStateCopyWithImpl<$Res, _$YourStoreStateImpl>
    implements _$$YourStoreStateImplCopyWith<$Res> {
  __$$YourStoreStateImplCopyWithImpl(
      _$YourStoreStateImpl _value, $Res Function(_$YourStoreStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? isBusy = null,
    Object? notification = freezed,
    Object? myStoreResponse = freezed,
    Object? createStorePostRequest = freezed,
    Object? editStorePutRequest = freezed,
    Object? errorResponse = freezed,
  }) {
    return _then(_$YourStoreStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UIStatus,
      isBusy: null == isBusy
          ? _value.isBusy
          : isBusy // ignore: cast_nullable_to_non_nullable
              as bool,
      notification: freezed == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as YourStoreNotification?,
      myStoreResponse: freezed == myStoreResponse
          ? _value.myStoreResponse
          : myStoreResponse // ignore: cast_nullable_to_non_nullable
              as MyStoreResponse?,
      createStorePostRequest: freezed == createStorePostRequest
          ? _value.createStorePostRequest
          : createStorePostRequest // ignore: cast_nullable_to_non_nullable
              as CreateStorePostRequest?,
      editStorePutRequest: freezed == editStorePutRequest
          ? _value.editStorePutRequest
          : editStorePutRequest // ignore: cast_nullable_to_non_nullable
              as EditStorePutRequest?,
      errorResponse: freezed == errorResponse
          ? _value.errorResponse
          : errorResponse // ignore: cast_nullable_to_non_nullable
              as ErrorResponse?,
    ));
  }
}

/// @nodoc

class _$YourStoreStateImpl implements _YourStoreState {
  const _$YourStoreStateImpl(
      {this.status = const UIInitial(),
      this.isBusy = false,
      this.notification,
      this.myStoreResponse,
      this.createStorePostRequest,
      this.editStorePutRequest,
      this.errorResponse});

  @override
  @JsonKey()
  final UIStatus status;
  @override
  @JsonKey()
  final bool isBusy;
  @override
  final YourStoreNotification? notification;
  @override
  final MyStoreResponse? myStoreResponse;
  @override
  final CreateStorePostRequest? createStorePostRequest;
  @override
  final EditStorePutRequest? editStorePutRequest;
  @override
  final ErrorResponse? errorResponse;

  @override
  String toString() {
    return 'YourStoreState(status: $status, isBusy: $isBusy, notification: $notification, myStoreResponse: $myStoreResponse, createStorePostRequest: $createStorePostRequest, editStorePutRequest: $editStorePutRequest, errorResponse: $errorResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$YourStoreStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isBusy, isBusy) || other.isBusy == isBusy) &&
            (identical(other.notification, notification) ||
                other.notification == notification) &&
            (identical(other.myStoreResponse, myStoreResponse) ||
                other.myStoreResponse == myStoreResponse) &&
            (identical(other.createStorePostRequest, createStorePostRequest) ||
                other.createStorePostRequest == createStorePostRequest) &&
            (identical(other.editStorePutRequest, editStorePutRequest) ||
                other.editStorePutRequest == editStorePutRequest) &&
            (identical(other.errorResponse, errorResponse) ||
                other.errorResponse == errorResponse));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      isBusy,
      notification,
      myStoreResponse,
      createStorePostRequest,
      editStorePutRequest,
      errorResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$YourStoreStateImplCopyWith<_$YourStoreStateImpl> get copyWith =>
      __$$YourStoreStateImplCopyWithImpl<_$YourStoreStateImpl>(
          this, _$identity);
}

abstract class _YourStoreState implements YourStoreState {
  const factory _YourStoreState(
      {final UIStatus status,
      final bool isBusy,
      final YourStoreNotification? notification,
      final MyStoreResponse? myStoreResponse,
      final CreateStorePostRequest? createStorePostRequest,
      final EditStorePutRequest? editStorePutRequest,
      final ErrorResponse? errorResponse}) = _$YourStoreStateImpl;

  @override
  UIStatus get status;
  @override
  bool get isBusy;
  @override
  YourStoreNotification? get notification;
  @override
  MyStoreResponse? get myStoreResponse;
  @override
  CreateStorePostRequest? get createStorePostRequest;
  @override
  EditStorePutRequest? get editStorePutRequest;
  @override
  ErrorResponse? get errorResponse;
  @override
  @JsonKey(ignore: true)
  _$$YourStoreStateImplCopyWith<_$YourStoreStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
