part of 'create_product_bloc.dart';

@freezed
class CreateProductState with _$CreateProductState {
  const factory CreateProductState({
    @Default(UIInitial()) UIStatus status,
    CreateProductNotification? notification,
    String? productCategoryId,
    String? productTypeId,
    @Default(false) bool isValid,
    ErrorResponse? errorResponse,
    @Default([]) List<ProductCategoryResponse>? dataProductCategory,
    @Default([]) List<ProductTypeResponse> dataProductType,
    @Default([]) List<String> dataUom,
    @Default(ProductPostRequest()) ProductPostRequest productPostRequest,
    @Default([]) List<ProductList>? productList,
    MyStoreResponse? myStoreResponse,
    @Default(false) bool isEnabledAddItem,
  }) = _CreateProductState;
}
