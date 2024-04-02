part of 'other_bloc.dart';

@freezed
class OtherEvent with _$OtherEvent {
  const factory OtherEvent.started() = _Started;

  const factory OtherEvent.logoutRequested() =
      _LogoutRequested;
}
