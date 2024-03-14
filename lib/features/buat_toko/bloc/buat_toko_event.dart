part of 'buat_toko_bloc.dart';

@Freezed()
class BuatTokoEvent with _$BuatTokoEvent {
  const factory BuatTokoEvent.loaded() = _Loaded;
  // const factory TokoAndaEvent.loginRequested(LoginPost loginPost) =
  //     _LoginRequestedX;
  const factory BuatTokoEvent.myStorePostRequested() = _MyStorePostRequested;
  const factory BuatTokoEvent.myStorePutRequested() = _MyStorePutRequested;
}
