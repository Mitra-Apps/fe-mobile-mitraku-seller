part of 'your_store_bloc.dart';

@Freezed()
class YourStoreState with _$YourStoreState {
  const factory YourStoreState({
    @Default(UIInitial()) UIStatus status,
    @Default(false) bool isBusy,
    YourStoreNotification? notification,
    MyStoreResponse? myStoreResponse,
    CreateStorePostRequest? createStorePostRequest,
    EditStorePutRequest? editStorePutRequest,
    ErrorResponse? errorResponse,
  }) = _YourStoreState;
}
