part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState({
    @Default(UIInitial()) UIStatus status,
    ProductNotification? notification,
    @Default(null) List<ProductResponse>? productList,
    MyStoreResponse? myStoreResponse,
    @Default(false) bool isMyStoreExist,
    @Default(false) bool isBusy,
  }) = _ProductState;
}
