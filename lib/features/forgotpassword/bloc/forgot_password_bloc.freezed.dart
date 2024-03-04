// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ForgotPasswordEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function(ForgotPasswordPost forgotPasswordPost)
        forgotPassRequested,
    required TResult Function(ResendOTPPost resendOTPPost) reqOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function(ForgotPasswordPost forgotPasswordPost)?
        forgotPassRequested,
    TResult? Function(ResendOTPPost resendOTPPost)? reqOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function(ForgotPasswordPost forgotPasswordPost)?
        forgotPassRequested,
    TResult Function(ResendOTPPost resendOTPPost)? reqOtp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ForgotPassRequested value) forgotPassRequested,
    required TResult Function(_ReqOtpRequested value) reqOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ForgotPassRequested value)? forgotPassRequested,
    TResult? Function(_ReqOtpRequested value)? reqOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ForgotPassRequested value)? forgotPassRequested,
    TResult Function(_ReqOtpRequested value)? reqOtp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordEventCopyWith<$Res> {
  factory $ForgotPasswordEventCopyWith(
          ForgotPasswordEvent value, $Res Function(ForgotPasswordEvent) then) =
      _$ForgotPasswordEventCopyWithImpl<$Res, ForgotPasswordEvent>;
}

/// @nodoc
class _$ForgotPasswordEventCopyWithImpl<$Res, $Val extends ForgotPasswordEvent>
    implements $ForgotPasswordEventCopyWith<$Res> {
  _$ForgotPasswordEventCopyWithImpl(this._value, this._then);

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
    extends _$ForgotPasswordEventCopyWithImpl<$Res, _$LoadedImpl>
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
    return 'ForgotPasswordEvent.loaded()';
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
    required TResult Function(ForgotPasswordPost forgotPasswordPost)
        forgotPassRequested,
    required TResult Function(ResendOTPPost resendOTPPost) reqOtp,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function(ForgotPasswordPost forgotPasswordPost)?
        forgotPassRequested,
    TResult? Function(ResendOTPPost resendOTPPost)? reqOtp,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function(ForgotPasswordPost forgotPasswordPost)?
        forgotPassRequested,
    TResult Function(ResendOTPPost resendOTPPost)? reqOtp,
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
    required TResult Function(_ForgotPassRequested value) forgotPassRequested,
    required TResult Function(_ReqOtpRequested value) reqOtp,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ForgotPassRequested value)? forgotPassRequested,
    TResult? Function(_ReqOtpRequested value)? reqOtp,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ForgotPassRequested value)? forgotPassRequested,
    TResult Function(_ReqOtpRequested value)? reqOtp,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements ForgotPasswordEvent {
  const factory _Loaded() = _$LoadedImpl;
}

/// @nodoc
abstract class _$$ForgotPassRequestedImplCopyWith<$Res> {
  factory _$$ForgotPassRequestedImplCopyWith(_$ForgotPassRequestedImpl value,
          $Res Function(_$ForgotPassRequestedImpl) then) =
      __$$ForgotPassRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ForgotPasswordPost forgotPasswordPost});

  $ForgotPasswordPostCopyWith<$Res> get forgotPasswordPost;
}

/// @nodoc
class __$$ForgotPassRequestedImplCopyWithImpl<$Res>
    extends _$ForgotPasswordEventCopyWithImpl<$Res, _$ForgotPassRequestedImpl>
    implements _$$ForgotPassRequestedImplCopyWith<$Res> {
  __$$ForgotPassRequestedImplCopyWithImpl(_$ForgotPassRequestedImpl _value,
      $Res Function(_$ForgotPassRequestedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forgotPasswordPost = null,
  }) {
    return _then(_$ForgotPassRequestedImpl(
      null == forgotPasswordPost
          ? _value.forgotPasswordPost
          : forgotPasswordPost // ignore: cast_nullable_to_non_nullable
              as ForgotPasswordPost,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ForgotPasswordPostCopyWith<$Res> get forgotPasswordPost {
    return $ForgotPasswordPostCopyWith<$Res>(_value.forgotPasswordPost,
        (value) {
      return _then(_value.copyWith(forgotPasswordPost: value));
    });
  }
}

/// @nodoc

class _$ForgotPassRequestedImpl implements _ForgotPassRequested {
  const _$ForgotPassRequestedImpl(this.forgotPasswordPost);

  @override
  final ForgotPasswordPost forgotPasswordPost;

  @override
  String toString() {
    return 'ForgotPasswordEvent.forgotPassRequested(forgotPasswordPost: $forgotPasswordPost)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPassRequestedImpl &&
            (identical(other.forgotPasswordPost, forgotPasswordPost) ||
                other.forgotPasswordPost == forgotPasswordPost));
  }

  @override
  int get hashCode => Object.hash(runtimeType, forgotPasswordPost);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPassRequestedImplCopyWith<_$ForgotPassRequestedImpl> get copyWith =>
      __$$ForgotPassRequestedImplCopyWithImpl<_$ForgotPassRequestedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function(ForgotPasswordPost forgotPasswordPost)
        forgotPassRequested,
    required TResult Function(ResendOTPPost resendOTPPost) reqOtp,
  }) {
    return forgotPassRequested(forgotPasswordPost);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function(ForgotPasswordPost forgotPasswordPost)?
        forgotPassRequested,
    TResult? Function(ResendOTPPost resendOTPPost)? reqOtp,
  }) {
    return forgotPassRequested?.call(forgotPasswordPost);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function(ForgotPasswordPost forgotPasswordPost)?
        forgotPassRequested,
    TResult Function(ResendOTPPost resendOTPPost)? reqOtp,
    required TResult orElse(),
  }) {
    if (forgotPassRequested != null) {
      return forgotPassRequested(forgotPasswordPost);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ForgotPassRequested value) forgotPassRequested,
    required TResult Function(_ReqOtpRequested value) reqOtp,
  }) {
    return forgotPassRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ForgotPassRequested value)? forgotPassRequested,
    TResult? Function(_ReqOtpRequested value)? reqOtp,
  }) {
    return forgotPassRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ForgotPassRequested value)? forgotPassRequested,
    TResult Function(_ReqOtpRequested value)? reqOtp,
    required TResult orElse(),
  }) {
    if (forgotPassRequested != null) {
      return forgotPassRequested(this);
    }
    return orElse();
  }
}

abstract class _ForgotPassRequested implements ForgotPasswordEvent {
  const factory _ForgotPassRequested(
      final ForgotPasswordPost forgotPasswordPost) = _$ForgotPassRequestedImpl;

  ForgotPasswordPost get forgotPasswordPost;
  @JsonKey(ignore: true)
  _$$ForgotPassRequestedImplCopyWith<_$ForgotPassRequestedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReqOtpRequestedImplCopyWith<$Res> {
  factory _$$ReqOtpRequestedImplCopyWith(_$ReqOtpRequestedImpl value,
          $Res Function(_$ReqOtpRequestedImpl) then) =
      __$$ReqOtpRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ResendOTPPost resendOTPPost});

  $ResendOTPPostCopyWith<$Res> get resendOTPPost;
}

/// @nodoc
class __$$ReqOtpRequestedImplCopyWithImpl<$Res>
    extends _$ForgotPasswordEventCopyWithImpl<$Res, _$ReqOtpRequestedImpl>
    implements _$$ReqOtpRequestedImplCopyWith<$Res> {
  __$$ReqOtpRequestedImplCopyWithImpl(
      _$ReqOtpRequestedImpl _value, $Res Function(_$ReqOtpRequestedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resendOTPPost = null,
  }) {
    return _then(_$ReqOtpRequestedImpl(
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

class _$ReqOtpRequestedImpl implements _ReqOtpRequested {
  const _$ReqOtpRequestedImpl(this.resendOTPPost);

  @override
  final ResendOTPPost resendOTPPost;

  @override
  String toString() {
    return 'ForgotPasswordEvent.reqOtp(resendOTPPost: $resendOTPPost)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReqOtpRequestedImpl &&
            (identical(other.resendOTPPost, resendOTPPost) ||
                other.resendOTPPost == resendOTPPost));
  }

  @override
  int get hashCode => Object.hash(runtimeType, resendOTPPost);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReqOtpRequestedImplCopyWith<_$ReqOtpRequestedImpl> get copyWith =>
      __$$ReqOtpRequestedImplCopyWithImpl<_$ReqOtpRequestedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function(ForgotPasswordPost forgotPasswordPost)
        forgotPassRequested,
    required TResult Function(ResendOTPPost resendOTPPost) reqOtp,
  }) {
    return reqOtp(resendOTPPost);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function(ForgotPasswordPost forgotPasswordPost)?
        forgotPassRequested,
    TResult? Function(ResendOTPPost resendOTPPost)? reqOtp,
  }) {
    return reqOtp?.call(resendOTPPost);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function(ForgotPasswordPost forgotPasswordPost)?
        forgotPassRequested,
    TResult Function(ResendOTPPost resendOTPPost)? reqOtp,
    required TResult orElse(),
  }) {
    if (reqOtp != null) {
      return reqOtp(resendOTPPost);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ForgotPassRequested value) forgotPassRequested,
    required TResult Function(_ReqOtpRequested value) reqOtp,
  }) {
    return reqOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ForgotPassRequested value)? forgotPassRequested,
    TResult? Function(_ReqOtpRequested value)? reqOtp,
  }) {
    return reqOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ForgotPassRequested value)? forgotPassRequested,
    TResult Function(_ReqOtpRequested value)? reqOtp,
    required TResult orElse(),
  }) {
    if (reqOtp != null) {
      return reqOtp(this);
    }
    return orElse();
  }
}

abstract class _ReqOtpRequested implements ForgotPasswordEvent {
  const factory _ReqOtpRequested(final ResendOTPPost resendOTPPost) =
      _$ReqOtpRequestedImpl;

  ResendOTPPost get resendOTPPost;
  @JsonKey(ignore: true)
  _$$ReqOtpRequestedImplCopyWith<_$ReqOtpRequestedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ForgotPasswordNotification {
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
  $ForgotPasswordNotificationCopyWith<ForgotPasswordNotification>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordNotificationCopyWith<$Res> {
  factory $ForgotPasswordNotificationCopyWith(ForgotPasswordNotification value,
          $Res Function(ForgotPasswordNotification) then) =
      _$ForgotPasswordNotificationCopyWithImpl<$Res,
          ForgotPasswordNotification>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$ForgotPasswordNotificationCopyWithImpl<$Res,
        $Val extends ForgotPasswordNotification>
    implements $ForgotPasswordNotificationCopyWith<$Res> {
  _$ForgotPasswordNotificationCopyWithImpl(this._value, this._then);

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
    implements $ForgotPasswordNotificationCopyWith<$Res> {
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
    extends _$ForgotPasswordNotificationCopyWithImpl<$Res,
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
    return 'ForgotPasswordNotification.notifySuccess(message: $message)';
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
    implements ForgotPasswordNotification {
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
    implements $ForgotPasswordNotificationCopyWith<$Res> {
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
    extends _$ForgotPasswordNotificationCopyWithImpl<$Res,
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
    return 'ForgotPasswordNotification.notifyFailed(message: $message)';
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

abstract class _NotificationNotifyFailed implements ForgotPasswordNotification {
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
mixin _$ForgotPasswordState {
  UIStatus get status => throw _privateConstructorUsedError;
  ForgotPasswordNotification? get notification =>
      throw _privateConstructorUsedError;
  LoginResponse get loginResponse => throw _privateConstructorUsedError;
  bool get isBusy => throw _privateConstructorUsedError;
  String get forgotPassBadRequest => throw _privateConstructorUsedError;
  String get forgotPassSuccess => throw _privateConstructorUsedError;
  ResendOTPResponse get resendOTPResponse => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForgotPasswordStateCopyWith<ForgotPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordStateCopyWith<$Res> {
  factory $ForgotPasswordStateCopyWith(
          ForgotPasswordState value, $Res Function(ForgotPasswordState) then) =
      _$ForgotPasswordStateCopyWithImpl<$Res, ForgotPasswordState>;
  @useResult
  $Res call(
      {UIStatus status,
      ForgotPasswordNotification? notification,
      LoginResponse loginResponse,
      bool isBusy,
      String forgotPassBadRequest,
      String forgotPassSuccess,
      ResendOTPResponse resendOTPResponse});

  $UIStatusCopyWith<$Res> get status;
  $ForgotPasswordNotificationCopyWith<$Res>? get notification;
  $LoginResponseCopyWith<$Res> get loginResponse;
  $ResendOTPResponseCopyWith<$Res> get resendOTPResponse;
}

/// @nodoc
class _$ForgotPasswordStateCopyWithImpl<$Res, $Val extends ForgotPasswordState>
    implements $ForgotPasswordStateCopyWith<$Res> {
  _$ForgotPasswordStateCopyWithImpl(this._value, this._then);

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
    Object? forgotPassBadRequest = null,
    Object? forgotPassSuccess = null,
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
              as ForgotPasswordNotification?,
      loginResponse: null == loginResponse
          ? _value.loginResponse
          : loginResponse // ignore: cast_nullable_to_non_nullable
              as LoginResponse,
      isBusy: null == isBusy
          ? _value.isBusy
          : isBusy // ignore: cast_nullable_to_non_nullable
              as bool,
      forgotPassBadRequest: null == forgotPassBadRequest
          ? _value.forgotPassBadRequest
          : forgotPassBadRequest // ignore: cast_nullable_to_non_nullable
              as String,
      forgotPassSuccess: null == forgotPassSuccess
          ? _value.forgotPassSuccess
          : forgotPassSuccess // ignore: cast_nullable_to_non_nullable
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
  $ForgotPasswordNotificationCopyWith<$Res>? get notification {
    if (_value.notification == null) {
      return null;
    }

    return $ForgotPasswordNotificationCopyWith<$Res>(_value.notification!,
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
abstract class _$$ForgotPasswordStateImplCopyWith<$Res>
    implements $ForgotPasswordStateCopyWith<$Res> {
  factory _$$ForgotPasswordStateImplCopyWith(_$ForgotPasswordStateImpl value,
          $Res Function(_$ForgotPasswordStateImpl) then) =
      __$$ForgotPasswordStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UIStatus status,
      ForgotPasswordNotification? notification,
      LoginResponse loginResponse,
      bool isBusy,
      String forgotPassBadRequest,
      String forgotPassSuccess,
      ResendOTPResponse resendOTPResponse});

  @override
  $UIStatusCopyWith<$Res> get status;
  @override
  $ForgotPasswordNotificationCopyWith<$Res>? get notification;
  @override
  $LoginResponseCopyWith<$Res> get loginResponse;
  @override
  $ResendOTPResponseCopyWith<$Res> get resendOTPResponse;
}

/// @nodoc
class __$$ForgotPasswordStateImplCopyWithImpl<$Res>
    extends _$ForgotPasswordStateCopyWithImpl<$Res, _$ForgotPasswordStateImpl>
    implements _$$ForgotPasswordStateImplCopyWith<$Res> {
  __$$ForgotPasswordStateImplCopyWithImpl(_$ForgotPasswordStateImpl _value,
      $Res Function(_$ForgotPasswordStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? notification = freezed,
    Object? loginResponse = null,
    Object? isBusy = null,
    Object? forgotPassBadRequest = null,
    Object? forgotPassSuccess = null,
    Object? resendOTPResponse = null,
  }) {
    return _then(_$ForgotPasswordStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UIStatus,
      notification: freezed == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as ForgotPasswordNotification?,
      loginResponse: null == loginResponse
          ? _value.loginResponse
          : loginResponse // ignore: cast_nullable_to_non_nullable
              as LoginResponse,
      isBusy: null == isBusy
          ? _value.isBusy
          : isBusy // ignore: cast_nullable_to_non_nullable
              as bool,
      forgotPassBadRequest: null == forgotPassBadRequest
          ? _value.forgotPassBadRequest
          : forgotPassBadRequest // ignore: cast_nullable_to_non_nullable
              as String,
      forgotPassSuccess: null == forgotPassSuccess
          ? _value.forgotPassSuccess
          : forgotPassSuccess // ignore: cast_nullable_to_non_nullable
              as String,
      resendOTPResponse: null == resendOTPResponse
          ? _value.resendOTPResponse
          : resendOTPResponse // ignore: cast_nullable_to_non_nullable
              as ResendOTPResponse,
    ));
  }
}

/// @nodoc

class _$ForgotPasswordStateImpl implements _ForgotPasswordState {
  const _$ForgotPasswordStateImpl(
      {this.status = const UIInitial(),
      this.notification,
      this.loginResponse = const LoginResponse(
          code: 0,
          message: '',
          data: DataLoginResponse(access_token: '', refresh_token: '')),
      this.isBusy = false,
      this.forgotPassBadRequest = 'RECORD_NOT_FOUND',
      this.forgotPassSuccess = '',
      this.resendOTPResponse = const ResendOTPResponse(code: 0, message: '')});

  @override
  @JsonKey()
  final UIStatus status;
  @override
  final ForgotPasswordNotification? notification;
  @override
  @JsonKey()
  final LoginResponse loginResponse;
  @override
  @JsonKey()
  final bool isBusy;
  @override
  @JsonKey()
  final String forgotPassBadRequest;
  @override
  @JsonKey()
  final String forgotPassSuccess;
  @override
  @JsonKey()
  final ResendOTPResponse resendOTPResponse;

  @override
  String toString() {
    return 'ForgotPasswordState(status: $status, notification: $notification, loginResponse: $loginResponse, isBusy: $isBusy, forgotPassBadRequest: $forgotPassBadRequest, forgotPassSuccess: $forgotPassSuccess, resendOTPResponse: $resendOTPResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.notification, notification) ||
                other.notification == notification) &&
            (identical(other.loginResponse, loginResponse) ||
                other.loginResponse == loginResponse) &&
            (identical(other.isBusy, isBusy) || other.isBusy == isBusy) &&
            (identical(other.forgotPassBadRequest, forgotPassBadRequest) ||
                other.forgotPassBadRequest == forgotPassBadRequest) &&
            (identical(other.forgotPassSuccess, forgotPassSuccess) ||
                other.forgotPassSuccess == forgotPassSuccess) &&
            (identical(other.resendOTPResponse, resendOTPResponse) ||
                other.resendOTPResponse == resendOTPResponse));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      notification,
      loginResponse,
      isBusy,
      forgotPassBadRequest,
      forgotPassSuccess,
      resendOTPResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPasswordStateImplCopyWith<_$ForgotPasswordStateImpl> get copyWith =>
      __$$ForgotPasswordStateImplCopyWithImpl<_$ForgotPasswordStateImpl>(
          this, _$identity);
}

abstract class _ForgotPasswordState implements ForgotPasswordState {
  const factory _ForgotPasswordState(
      {final UIStatus status,
      final ForgotPasswordNotification? notification,
      final LoginResponse loginResponse,
      final bool isBusy,
      final String forgotPassBadRequest,
      final String forgotPassSuccess,
      final ResendOTPResponse resendOTPResponse}) = _$ForgotPasswordStateImpl;

  @override
  UIStatus get status;
  @override
  ForgotPasswordNotification? get notification;
  @override
  LoginResponse get loginResponse;
  @override
  bool get isBusy;
  @override
  String get forgotPassBadRequest;
  @override
  String get forgotPassSuccess;
  @override
  ResendOTPResponse get resendOTPResponse;
  @override
  @JsonKey(ignore: true)
  _$$ForgotPasswordStateImplCopyWith<_$ForgotPasswordStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
