part of 'toko_anda_bloc.dart';

@Freezed()
class TokoAndaEvent with _$TokoAndaEvent {
  const factory TokoAndaEvent.loaded() = _LoadedX;
  // const factory TokoAndaEvent.loginRequested(LoginPost loginPost) =
  //     _LoginRequestedX;
  const factory TokoAndaEvent.myStoreGetRequested() = _MyStoreGetRequested;
}
