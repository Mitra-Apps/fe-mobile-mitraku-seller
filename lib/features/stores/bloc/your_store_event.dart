part of 'your_store_bloc.dart';

@Freezed()
class YourStoreEvent with _$YourStoreEvent {
  const factory YourStoreEvent.getMyStoreRequest() = _GetMyStoreRequest;
  const factory YourStoreEvent.postCreateStoreRequest(
    CreateStorePostRequest createStorePostRequest,
  ) = _PostCreateStoreRequest;
  const factory YourStoreEvent.putEditStoreRequest({
    required String storeId,
    required EditStorePutRequest editStorePutRequest,
  }) = _PutEditStoreRequest;
}
