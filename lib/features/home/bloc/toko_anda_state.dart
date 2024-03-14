part of 'toko_anda_bloc.dart';

@Freezed()
class TokoAndaState with _$TokoAndaState {
  const factory TokoAndaState({
    @Default(UIInitial()) UIStatus status,
    TokoAndaNotification? notification,
    @Default(
      TokoAndaResponse(
        code: 0,
        message: '',
        data: null,
      ),
    )
    TokoAndaResponse tokoAndaResponse,
    @Default(false) bool isBusy,
    // @Default('AUTH_LOGIN_NOT_FOUND') String loginBadRequest,
    // @Default('') String loginSuccess,
  }) = _TokoAndaState;
}
