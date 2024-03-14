part of 'buat_toko_bloc.dart';

@Freezed()
class BuatTokoState with _$BuatTokoState {
  const factory BuatTokoState({
    @Default(UIInitial()) UIStatus status,
    BuatTokoNotification? notification,
    @Default(
      BuatTokoResponse(
        code: 0,
        message: '',
        data: null,
      ),
    )
    BuatTokoResponse buatTokoResponse,
    @Default(false) bool isBusy,
    // @Default('AUTH_LOGIN_NOT_FOUND') String loginBadRequest,
    // @Default('') String loginSuccess,
  }) = _BuatTokoState;
}
