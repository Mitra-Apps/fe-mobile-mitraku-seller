part of 'your_store_bloc.dart';

@Freezed()
class YourStoreEvent with _$YourStoreEvent {
  const factory YourStoreEvent.getMyStoreRequest() = _GetMyStoreRequest;
  const factory YourStoreEvent.postCreateStoreRequest(
    CreateStorePostRequest buatTokoPostRequest,
  ) = _PostCreateStoreRequest;
  const factory YourStoreEvent.putCreateStoreRequest() = _PutCreateStoreRequest;
}
