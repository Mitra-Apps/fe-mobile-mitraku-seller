// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'other_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OtherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(LogoutPost logoutPost) logoutRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(LogoutPost logoutPost)? logoutRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(LogoutPost logoutPost)? logoutRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LogoutRequested value) logoutRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LogoutRequested value)? logoutRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LogoutRequested value)? logoutRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtherEventCopyWith<$Res> {
  factory $OtherEventCopyWith(
          OtherEvent value, $Res Function(OtherEvent) then) =
      _$OtherEventCopyWithImpl<$Res, OtherEvent>;
}

/// @nodoc
class _$OtherEventCopyWithImpl<$Res, $Val extends OtherEvent>
    implements $OtherEventCopyWith<$Res> {
  _$OtherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$OtherEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'OtherEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(LogoutPost logoutPost) logoutRequested,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(LogoutPost logoutPost)? logoutRequested,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(LogoutPost logoutPost)? logoutRequested,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LogoutRequested value) logoutRequested,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LogoutRequested value)? logoutRequested,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LogoutRequested value)? logoutRequested,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements OtherEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$LogoutRequestedImplCopyWith<$Res> {
  factory _$$LogoutRequestedImplCopyWith(_$LogoutRequestedImpl value,
          $Res Function(_$LogoutRequestedImpl) then) =
      __$$LogoutRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LogoutPost logoutPost});

  $LogoutPostCopyWith<$Res> get logoutPost;
}

/// @nodoc
class __$$LogoutRequestedImplCopyWithImpl<$Res>
    extends _$OtherEventCopyWithImpl<$Res, _$LogoutRequestedImpl>
    implements _$$LogoutRequestedImplCopyWith<$Res> {
  __$$LogoutRequestedImplCopyWithImpl(
      _$LogoutRequestedImpl _value, $Res Function(_$LogoutRequestedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? logoutPost = null,
  }) {
    return _then(_$LogoutRequestedImpl(
      null == logoutPost
          ? _value.logoutPost
          : logoutPost // ignore: cast_nullable_to_non_nullable
              as LogoutPost,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LogoutPostCopyWith<$Res> get logoutPost {
    return $LogoutPostCopyWith<$Res>(_value.logoutPost, (value) {
      return _then(_value.copyWith(logoutPost: value));
    });
  }
}

/// @nodoc

class _$LogoutRequestedImpl implements _LogoutRequested {
  const _$LogoutRequestedImpl(this.logoutPost);

  @override
  final LogoutPost logoutPost;

  @override
  String toString() {
    return 'OtherEvent.logoutRequested(logoutPost: $logoutPost)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogoutRequestedImpl &&
            (identical(other.logoutPost, logoutPost) ||
                other.logoutPost == logoutPost));
  }

  @override
  int get hashCode => Object.hash(runtimeType, logoutPost);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LogoutRequestedImplCopyWith<_$LogoutRequestedImpl> get copyWith =>
      __$$LogoutRequestedImplCopyWithImpl<_$LogoutRequestedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(LogoutPost logoutPost) logoutRequested,
  }) {
    return logoutRequested(logoutPost);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(LogoutPost logoutPost)? logoutRequested,
  }) {
    return logoutRequested?.call(logoutPost);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(LogoutPost logoutPost)? logoutRequested,
    required TResult orElse(),
  }) {
    if (logoutRequested != null) {
      return logoutRequested(logoutPost);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LogoutRequested value) logoutRequested,
  }) {
    return logoutRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LogoutRequested value)? logoutRequested,
  }) {
    return logoutRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LogoutRequested value)? logoutRequested,
    required TResult orElse(),
  }) {
    if (logoutRequested != null) {
      return logoutRequested(this);
    }
    return orElse();
  }
}

abstract class _LogoutRequested implements OtherEvent {
  const factory _LogoutRequested(final LogoutPost logoutPost) =
      _$LogoutRequestedImpl;

  LogoutPost get logoutPost;
  @JsonKey(ignore: true)
  _$$LogoutRequestedImplCopyWith<_$LogoutRequestedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OtherState {
  UIStatus get status => throw _privateConstructorUsedError;
  LogoutResponse get logoutResponse => throw _privateConstructorUsedError;
  String get loginBadRequest => throw _privateConstructorUsedError;
  String get logoutStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OtherStateCopyWith<OtherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtherStateCopyWith<$Res> {
  factory $OtherStateCopyWith(
          OtherState value, $Res Function(OtherState) then) =
      _$OtherStateCopyWithImpl<$Res, OtherState>;
  @useResult
  $Res call(
      {UIStatus status,
      LogoutResponse logoutResponse,
      String loginBadRequest,
      String logoutStatus});

  $UIStatusCopyWith<$Res> get status;
  $LogoutResponseCopyWith<$Res> get logoutResponse;
}

/// @nodoc
class _$OtherStateCopyWithImpl<$Res, $Val extends OtherState>
    implements $OtherStateCopyWith<$Res> {
  _$OtherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? logoutResponse = null,
    Object? loginBadRequest = null,
    Object? logoutStatus = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UIStatus,
      logoutResponse: null == logoutResponse
          ? _value.logoutResponse
          : logoutResponse // ignore: cast_nullable_to_non_nullable
              as LogoutResponse,
      loginBadRequest: null == loginBadRequest
          ? _value.loginBadRequest
          : loginBadRequest // ignore: cast_nullable_to_non_nullable
              as String,
      logoutStatus: null == logoutStatus
          ? _value.logoutStatus
          : logoutStatus // ignore: cast_nullable_to_non_nullable
              as String,
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
  $LogoutResponseCopyWith<$Res> get logoutResponse {
    return $LogoutResponseCopyWith<$Res>(_value.logoutResponse, (value) {
      return _then(_value.copyWith(logoutResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OtherStateImplCopyWith<$Res>
    implements $OtherStateCopyWith<$Res> {
  factory _$$OtherStateImplCopyWith(
          _$OtherStateImpl value, $Res Function(_$OtherStateImpl) then) =
      __$$OtherStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UIStatus status,
      LogoutResponse logoutResponse,
      String loginBadRequest,
      String logoutStatus});

  @override
  $UIStatusCopyWith<$Res> get status;
  @override
  $LogoutResponseCopyWith<$Res> get logoutResponse;
}

/// @nodoc
class __$$OtherStateImplCopyWithImpl<$Res>
    extends _$OtherStateCopyWithImpl<$Res, _$OtherStateImpl>
    implements _$$OtherStateImplCopyWith<$Res> {
  __$$OtherStateImplCopyWithImpl(
      _$OtherStateImpl _value, $Res Function(_$OtherStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? logoutResponse = null,
    Object? loginBadRequest = null,
    Object? logoutStatus = null,
  }) {
    return _then(_$OtherStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UIStatus,
      logoutResponse: null == logoutResponse
          ? _value.logoutResponse
          : logoutResponse // ignore: cast_nullable_to_non_nullable
              as LogoutResponse,
      loginBadRequest: null == loginBadRequest
          ? _value.loginBadRequest
          : loginBadRequest // ignore: cast_nullable_to_non_nullable
              as String,
      logoutStatus: null == logoutStatus
          ? _value.logoutStatus
          : logoutStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OtherStateImpl implements _OtherState {
  const _$OtherStateImpl(
      {this.status = const UIInitial(),
      this.logoutResponse = const LogoutResponse(code: 0, message: ''),
      this.loginBadRequest = 'AUTH_LOGIN_NOT_FOUND',
      this.logoutStatus = ''});

  @override
  @JsonKey()
  final UIStatus status;
  @override
  @JsonKey()
  final LogoutResponse logoutResponse;
  @override
  @JsonKey()
  final String loginBadRequest;
  @override
  @JsonKey()
  final String logoutStatus;

  @override
  String toString() {
    return 'OtherState(status: $status, logoutResponse: $logoutResponse, loginBadRequest: $loginBadRequest, logoutStatus: $logoutStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtherStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.logoutResponse, logoutResponse) ||
                other.logoutResponse == logoutResponse) &&
            (identical(other.loginBadRequest, loginBadRequest) ||
                other.loginBadRequest == loginBadRequest) &&
            (identical(other.logoutStatus, logoutStatus) ||
                other.logoutStatus == logoutStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, logoutResponse, loginBadRequest, logoutStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtherStateImplCopyWith<_$OtherStateImpl> get copyWith =>
      __$$OtherStateImplCopyWithImpl<_$OtherStateImpl>(this, _$identity);
}

abstract class _OtherState implements OtherState {
  const factory _OtherState(
      {final UIStatus status,
      final LogoutResponse logoutResponse,
      final String loginBadRequest,
      final String logoutStatus}) = _$OtherStateImpl;

  @override
  UIStatus get status;
  @override
  LogoutResponse get logoutResponse;
  @override
  String get loginBadRequest;
  @override
  String get logoutStatus;
  @override
  @JsonKey(ignore: true)
  _$$OtherStateImplCopyWith<_$OtherStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
