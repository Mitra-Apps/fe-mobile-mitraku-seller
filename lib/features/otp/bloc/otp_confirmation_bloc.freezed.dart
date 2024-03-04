// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_confirmation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OtpConfirmationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function(OtpConfirmationPost otpConfirmationPost)
        otpRequested,
    required TResult Function(ResendOTPPost resendOTPPost) resendOtpRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function(OtpConfirmationPost otpConfirmationPost)? otpRequested,
    TResult? Function(ResendOTPPost resendOTPPost)? resendOtpRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function(OtpConfirmationPost otpConfirmationPost)? otpRequested,
    TResult Function(ResendOTPPost resendOTPPost)? resendOtpRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_OtpConfrimationRequested value) otpRequested,
    required TResult Function(_ResendOtpRequested value) resendOtpRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_OtpConfrimationRequested value)? otpRequested,
    TResult? Function(_ResendOtpRequested value)? resendOtpRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_OtpConfrimationRequested value)? otpRequested,
    TResult Function(_ResendOtpRequested value)? resendOtpRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpConfirmationEventCopyWith<$Res> {
  factory $OtpConfirmationEventCopyWith(OtpConfirmationEvent value,
          $Res Function(OtpConfirmationEvent) then) =
      _$OtpConfirmationEventCopyWithImpl<$Res, OtpConfirmationEvent>;
}

/// @nodoc
class _$OtpConfirmationEventCopyWithImpl<$Res,
        $Val extends OtpConfirmationEvent>
    implements $OtpConfirmationEventCopyWith<$Res> {
  _$OtpConfirmationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$OtpConfirmationEventCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl();

  @override
  String toString() {
    return 'OtpConfirmationEvent.loaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function(OtpConfirmationPost otpConfirmationPost)
        otpRequested,
    required TResult Function(ResendOTPPost resendOTPPost) resendOtpRequested,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function(OtpConfirmationPost otpConfirmationPost)? otpRequested,
    TResult? Function(ResendOTPPost resendOTPPost)? resendOtpRequested,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function(OtpConfirmationPost otpConfirmationPost)? otpRequested,
    TResult Function(ResendOTPPost resendOTPPost)? resendOtpRequested,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_OtpConfrimationRequested value) otpRequested,
    required TResult Function(_ResendOtpRequested value) resendOtpRequested,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_OtpConfrimationRequested value)? otpRequested,
    TResult? Function(_ResendOtpRequested value)? resendOtpRequested,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_OtpConfrimationRequested value)? otpRequested,
    TResult Function(_ResendOtpRequested value)? resendOtpRequested,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements OtpConfirmationEvent {
  const factory _Loaded() = _$LoadedImpl;
}

/// @nodoc
abstract class _$$OtpConfrimationRequestedImplCopyWith<$Res> {
  factory _$$OtpConfrimationRequestedImplCopyWith(
          _$OtpConfrimationRequestedImpl value,
          $Res Function(_$OtpConfrimationRequestedImpl) then) =
      __$$OtpConfrimationRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OtpConfirmationPost otpConfirmationPost});

  $OtpConfirmationPostCopyWith<$Res> get otpConfirmationPost;
}

/// @nodoc
class __$$OtpConfrimationRequestedImplCopyWithImpl<$Res>
    extends _$OtpConfirmationEventCopyWithImpl<$Res,
        _$OtpConfrimationRequestedImpl>
    implements _$$OtpConfrimationRequestedImplCopyWith<$Res> {
  __$$OtpConfrimationRequestedImplCopyWithImpl(
      _$OtpConfrimationRequestedImpl _value,
      $Res Function(_$OtpConfrimationRequestedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otpConfirmationPost = null,
  }) {
    return _then(_$OtpConfrimationRequestedImpl(
      null == otpConfirmationPost
          ? _value.otpConfirmationPost
          : otpConfirmationPost // ignore: cast_nullable_to_non_nullable
              as OtpConfirmationPost,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $OtpConfirmationPostCopyWith<$Res> get otpConfirmationPost {
    return $OtpConfirmationPostCopyWith<$Res>(_value.otpConfirmationPost,
        (value) {
      return _then(_value.copyWith(otpConfirmationPost: value));
    });
  }
}

/// @nodoc

class _$OtpConfrimationRequestedImpl implements _OtpConfrimationRequested {
  const _$OtpConfrimationRequestedImpl(this.otpConfirmationPost);

  @override
  final OtpConfirmationPost otpConfirmationPost;

  @override
  String toString() {
    return 'OtpConfirmationEvent.otpRequested(otpConfirmationPost: $otpConfirmationPost)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpConfrimationRequestedImpl &&
            (identical(other.otpConfirmationPost, otpConfirmationPost) ||
                other.otpConfirmationPost == otpConfirmationPost));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otpConfirmationPost);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpConfrimationRequestedImplCopyWith<_$OtpConfrimationRequestedImpl>
      get copyWith => __$$OtpConfrimationRequestedImplCopyWithImpl<
          _$OtpConfrimationRequestedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function(OtpConfirmationPost otpConfirmationPost)
        otpRequested,
    required TResult Function(ResendOTPPost resendOTPPost) resendOtpRequested,
  }) {
    return otpRequested(otpConfirmationPost);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function(OtpConfirmationPost otpConfirmationPost)? otpRequested,
    TResult? Function(ResendOTPPost resendOTPPost)? resendOtpRequested,
  }) {
    return otpRequested?.call(otpConfirmationPost);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function(OtpConfirmationPost otpConfirmationPost)? otpRequested,
    TResult Function(ResendOTPPost resendOTPPost)? resendOtpRequested,
    required TResult orElse(),
  }) {
    if (otpRequested != null) {
      return otpRequested(otpConfirmationPost);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_OtpConfrimationRequested value) otpRequested,
    required TResult Function(_ResendOtpRequested value) resendOtpRequested,
  }) {
    return otpRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_OtpConfrimationRequested value)? otpRequested,
    TResult? Function(_ResendOtpRequested value)? resendOtpRequested,
  }) {
    return otpRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_OtpConfrimationRequested value)? otpRequested,
    TResult Function(_ResendOtpRequested value)? resendOtpRequested,
    required TResult orElse(),
  }) {
    if (otpRequested != null) {
      return otpRequested(this);
    }
    return orElse();
  }
}

abstract class _OtpConfrimationRequested implements OtpConfirmationEvent {
  const factory _OtpConfrimationRequested(
          final OtpConfirmationPost otpConfirmationPost) =
      _$OtpConfrimationRequestedImpl;

  OtpConfirmationPost get otpConfirmationPost;
  @JsonKey(ignore: true)
  _$$OtpConfrimationRequestedImplCopyWith<_$OtpConfrimationRequestedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResendOtpRequestedImplCopyWith<$Res> {
  factory _$$ResendOtpRequestedImplCopyWith(_$ResendOtpRequestedImpl value,
          $Res Function(_$ResendOtpRequestedImpl) then) =
      __$$ResendOtpRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ResendOTPPost resendOTPPost});

  $ResendOTPPostCopyWith<$Res> get resendOTPPost;
}

/// @nodoc
class __$$ResendOtpRequestedImplCopyWithImpl<$Res>
    extends _$OtpConfirmationEventCopyWithImpl<$Res, _$ResendOtpRequestedImpl>
    implements _$$ResendOtpRequestedImplCopyWith<$Res> {
  __$$ResendOtpRequestedImplCopyWithImpl(_$ResendOtpRequestedImpl _value,
      $Res Function(_$ResendOtpRequestedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resendOTPPost = null,
  }) {
    return _then(_$ResendOtpRequestedImpl(
      null == resendOTPPost
          ? _value.resendOTPPost
          : resendOTPPost // ignore: cast_nullable_to_non_nullable
              as ResendOTPPost,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ResendOTPPostCopyWith<$Res> get resendOTPPost {
    return $ResendOTPPostCopyWith<$Res>(_value.resendOTPPost, (value) {
      return _then(_value.copyWith(resendOTPPost: value));
    });
  }
}

/// @nodoc

class _$ResendOtpRequestedImpl implements _ResendOtpRequested {
  const _$ResendOtpRequestedImpl(this.resendOTPPost);

  @override
  final ResendOTPPost resendOTPPost;

  @override
  String toString() {
    return 'OtpConfirmationEvent.resendOtpRequested(resendOTPPost: $resendOTPPost)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResendOtpRequestedImpl &&
            (identical(other.resendOTPPost, resendOTPPost) ||
                other.resendOTPPost == resendOTPPost));
  }

  @override
  int get hashCode => Object.hash(runtimeType, resendOTPPost);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResendOtpRequestedImplCopyWith<_$ResendOtpRequestedImpl> get copyWith =>
      __$$ResendOtpRequestedImplCopyWithImpl<_$ResendOtpRequestedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function(OtpConfirmationPost otpConfirmationPost)
        otpRequested,
    required TResult Function(ResendOTPPost resendOTPPost) resendOtpRequested,
  }) {
    return resendOtpRequested(resendOTPPost);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function(OtpConfirmationPost otpConfirmationPost)? otpRequested,
    TResult? Function(ResendOTPPost resendOTPPost)? resendOtpRequested,
  }) {
    return resendOtpRequested?.call(resendOTPPost);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function(OtpConfirmationPost otpConfirmationPost)? otpRequested,
    TResult Function(ResendOTPPost resendOTPPost)? resendOtpRequested,
    required TResult orElse(),
  }) {
    if (resendOtpRequested != null) {
      return resendOtpRequested(resendOTPPost);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_OtpConfrimationRequested value) otpRequested,
    required TResult Function(_ResendOtpRequested value) resendOtpRequested,
  }) {
    return resendOtpRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_OtpConfrimationRequested value)? otpRequested,
    TResult? Function(_ResendOtpRequested value)? resendOtpRequested,
  }) {
    return resendOtpRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_OtpConfrimationRequested value)? otpRequested,
    TResult Function(_ResendOtpRequested value)? resendOtpRequested,
    required TResult orElse(),
  }) {
    if (resendOtpRequested != null) {
      return resendOtpRequested(this);
    }
    return orElse();
  }
}

abstract class _ResendOtpRequested implements OtpConfirmationEvent {
  const factory _ResendOtpRequested(final ResendOTPPost resendOTPPost) =
      _$ResendOtpRequestedImpl;

  ResendOTPPost get resendOTPPost;
  @JsonKey(ignore: true)
  _$$ResendOtpRequestedImplCopyWith<_$ResendOtpRequestedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OtpConfirmationNotification {
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
  $OtpConfirmationNotificationCopyWith<OtpConfirmationNotification>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpConfirmationNotificationCopyWith<$Res> {
  factory $OtpConfirmationNotificationCopyWith(
          OtpConfirmationNotification value,
          $Res Function(OtpConfirmationNotification) then) =
      _$OtpConfirmationNotificationCopyWithImpl<$Res,
          OtpConfirmationNotification>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$OtpConfirmationNotificationCopyWithImpl<$Res,
        $Val extends OtpConfirmationNotification>
    implements $OtpConfirmationNotificationCopyWith<$Res> {
  _$OtpConfirmationNotificationCopyWithImpl(this._value, this._then);

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
    implements $OtpConfirmationNotificationCopyWith<$Res> {
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
    extends _$OtpConfirmationNotificationCopyWithImpl<$Res,
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
    return 'OtpConfirmationNotification.notifySuccess(message: $message)';
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

abstract class _NotificationNotifySuccess
    implements OtpConfirmationNotification {
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
    implements $OtpConfirmationNotificationCopyWith<$Res> {
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
    extends _$OtpConfirmationNotificationCopyWithImpl<$Res,
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
    return 'OtpConfirmationNotification.notifyFailed(message: $message)';
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

abstract class _NotificationNotifyFailed
    implements OtpConfirmationNotification {
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
mixin _$OtpConfirmationState {
  UIStatus get status => throw _privateConstructorUsedError;
  OtpConfirmationNotification? get notification =>
      throw _privateConstructorUsedError;
  LoginResponse get loginResponse => throw _privateConstructorUsedError;
  bool get isBusy => throw _privateConstructorUsedError;
  String get otpBadRequest => throw _privateConstructorUsedError;
  String get otpSuccess => throw _privateConstructorUsedError;
  ResendOTPResponse get resendOTPResponse => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OtpConfirmationStateCopyWith<OtpConfirmationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpConfirmationStateCopyWith<$Res> {
  factory $OtpConfirmationStateCopyWith(OtpConfirmationState value,
          $Res Function(OtpConfirmationState) then) =
      _$OtpConfirmationStateCopyWithImpl<$Res, OtpConfirmationState>;
  @useResult
  $Res call(
      {UIStatus status,
      OtpConfirmationNotification? notification,
      LoginResponse loginResponse,
      bool isBusy,
      String otpBadRequest,
      String otpSuccess,
      ResendOTPResponse resendOTPResponse});

  $UIStatusCopyWith<$Res> get status;
  $OtpConfirmationNotificationCopyWith<$Res>? get notification;
  $LoginResponseCopyWith<$Res> get loginResponse;
  $ResendOTPResponseCopyWith<$Res> get resendOTPResponse;
}

/// @nodoc
class _$OtpConfirmationStateCopyWithImpl<$Res,
        $Val extends OtpConfirmationState>
    implements $OtpConfirmationStateCopyWith<$Res> {
  _$OtpConfirmationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? notification = freezed,
    Object? loginResponse = null,
    Object? isBusy = null,
    Object? otpBadRequest = null,
    Object? otpSuccess = null,
    Object? resendOTPResponse = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UIStatus,
      notification: freezed == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as OtpConfirmationNotification?,
      loginResponse: null == loginResponse
          ? _value.loginResponse
          : loginResponse // ignore: cast_nullable_to_non_nullable
              as LoginResponse,
      isBusy: null == isBusy
          ? _value.isBusy
          : isBusy // ignore: cast_nullable_to_non_nullable
              as bool,
      otpBadRequest: null == otpBadRequest
          ? _value.otpBadRequest
          : otpBadRequest // ignore: cast_nullable_to_non_nullable
              as String,
      otpSuccess: null == otpSuccess
          ? _value.otpSuccess
          : otpSuccess // ignore: cast_nullable_to_non_nullable
              as String,
      resendOTPResponse: null == resendOTPResponse
          ? _value.resendOTPResponse
          : resendOTPResponse // ignore: cast_nullable_to_non_nullable
              as ResendOTPResponse,
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
  $OtpConfirmationNotificationCopyWith<$Res>? get notification {
    if (_value.notification == null) {
      return null;
    }

    return $OtpConfirmationNotificationCopyWith<$Res>(_value.notification!,
        (value) {
      return _then(_value.copyWith(notification: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LoginResponseCopyWith<$Res> get loginResponse {
    return $LoginResponseCopyWith<$Res>(_value.loginResponse, (value) {
      return _then(_value.copyWith(loginResponse: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ResendOTPResponseCopyWith<$Res> get resendOTPResponse {
    return $ResendOTPResponseCopyWith<$Res>(_value.resendOTPResponse, (value) {
      return _then(_value.copyWith(resendOTPResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OtpConfirmationStateImplCopyWith<$Res>
    implements $OtpConfirmationStateCopyWith<$Res> {
  factory _$$OtpConfirmationStateImplCopyWith(_$OtpConfirmationStateImpl value,
          $Res Function(_$OtpConfirmationStateImpl) then) =
      __$$OtpConfirmationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UIStatus status,
      OtpConfirmationNotification? notification,
      LoginResponse loginResponse,
      bool isBusy,
      String otpBadRequest,
      String otpSuccess,
      ResendOTPResponse resendOTPResponse});

  @override
  $UIStatusCopyWith<$Res> get status;
  @override
  $OtpConfirmationNotificationCopyWith<$Res>? get notification;
  @override
  $LoginResponseCopyWith<$Res> get loginResponse;
  @override
  $ResendOTPResponseCopyWith<$Res> get resendOTPResponse;
}

/// @nodoc
class __$$OtpConfirmationStateImplCopyWithImpl<$Res>
    extends _$OtpConfirmationStateCopyWithImpl<$Res, _$OtpConfirmationStateImpl>
    implements _$$OtpConfirmationStateImplCopyWith<$Res> {
  __$$OtpConfirmationStateImplCopyWithImpl(_$OtpConfirmationStateImpl _value,
      $Res Function(_$OtpConfirmationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? notification = freezed,
    Object? loginResponse = null,
    Object? isBusy = null,
    Object? otpBadRequest = null,
    Object? otpSuccess = null,
    Object? resendOTPResponse = null,
  }) {
    return _then(_$OtpConfirmationStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UIStatus,
      notification: freezed == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as OtpConfirmationNotification?,
      loginResponse: null == loginResponse
          ? _value.loginResponse
          : loginResponse // ignore: cast_nullable_to_non_nullable
              as LoginResponse,
      isBusy: null == isBusy
          ? _value.isBusy
          : isBusy // ignore: cast_nullable_to_non_nullable
              as bool,
      otpBadRequest: null == otpBadRequest
          ? _value.otpBadRequest
          : otpBadRequest // ignore: cast_nullable_to_non_nullable
              as String,
      otpSuccess: null == otpSuccess
          ? _value.otpSuccess
          : otpSuccess // ignore: cast_nullable_to_non_nullable
              as String,
      resendOTPResponse: null == resendOTPResponse
          ? _value.resendOTPResponse
          : resendOTPResponse // ignore: cast_nullable_to_non_nullable
              as ResendOTPResponse,
    ));
  }
}

/// @nodoc

class _$OtpConfirmationStateImpl implements _OtpConfirmationState {
  const _$OtpConfirmationStateImpl(
      {this.status = const UIInitial(),
      this.notification,
      this.loginResponse = const LoginResponse(
          code: 0,
          message: '',
          data: DataLoginResponse(access_token: '', refresh_token: '')),
      this.isBusy = false,
      this.otpBadRequest = 'AUTH_OTP_INVALID',
      this.otpSuccess = '',
      this.resendOTPResponse = const ResendOTPResponse(code: 0, message: '')});

  @override
  @JsonKey()
  final UIStatus status;
  @override
  final OtpConfirmationNotification? notification;
  @override
  @JsonKey()
  final LoginResponse loginResponse;
  @override
  @JsonKey()
  final bool isBusy;
  @override
  @JsonKey()
  final String otpBadRequest;
  @override
  @JsonKey()
  final String otpSuccess;
  @override
  @JsonKey()
  final ResendOTPResponse resendOTPResponse;

  @override
  String toString() {
    return 'OtpConfirmationState(status: $status, notification: $notification, loginResponse: $loginResponse, isBusy: $isBusy, otpBadRequest: $otpBadRequest, otpSuccess: $otpSuccess, resendOTPResponse: $resendOTPResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpConfirmationStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.notification, notification) ||
                other.notification == notification) &&
            (identical(other.loginResponse, loginResponse) ||
                other.loginResponse == loginResponse) &&
            (identical(other.isBusy, isBusy) || other.isBusy == isBusy) &&
            (identical(other.otpBadRequest, otpBadRequest) ||
                other.otpBadRequest == otpBadRequest) &&
            (identical(other.otpSuccess, otpSuccess) ||
                other.otpSuccess == otpSuccess) &&
            (identical(other.resendOTPResponse, resendOTPResponse) ||
                other.resendOTPResponse == resendOTPResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, notification,
      loginResponse, isBusy, otpBadRequest, otpSuccess, resendOTPResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpConfirmationStateImplCopyWith<_$OtpConfirmationStateImpl>
      get copyWith =>
          __$$OtpConfirmationStateImplCopyWithImpl<_$OtpConfirmationStateImpl>(
              this, _$identity);
}

abstract class _OtpConfirmationState implements OtpConfirmationState {
  const factory _OtpConfirmationState(
      {final UIStatus status,
      final OtpConfirmationNotification? notification,
      final LoginResponse loginResponse,
      final bool isBusy,
      final String otpBadRequest,
      final String otpSuccess,
      final ResendOTPResponse resendOTPResponse}) = _$OtpConfirmationStateImpl;

  @override
  UIStatus get status;
  @override
  OtpConfirmationNotification? get notification;
  @override
  LoginResponse get loginResponse;
  @override
  bool get isBusy;
  @override
  String get otpBadRequest;
  @override
  String get otpSuccess;
  @override
  ResendOTPResponse get resendOTPResponse;
  @override
  @JsonKey(ignore: true)
  _$$OtpConfirmationStateImplCopyWith<_$OtpConfirmationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
