part of 'register_bloc.dart';

@Freezed()
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.loaded() = _Loaded;
  const factory RegisterEvent.registerRequested(RegisterPost registerPost) = _RegisterRequested;
}
