part of 'create_product_bloc.dart';

@freezed
class CreateProductState with _$CreateProductState {
  const factory CreateProductState({
    @Default(UIInitial()) UIStatus status,
    CreateProductNotification? notification,
    @Default('') String? productCategoryId,
    @Default('') String? productTypeId,
    @Default(false) bool isValid,
    ErrorResponse? errorResponse,
    @Default([]) List<ProductCategoryResponse> dataProductCategory,
    @Default([]) List<ProductTypeResponse> dataProductType,
    @Default([]) List<UomResponse> dataUom,
    @Default(ProductPostRequest()) ProductPostRequest productPostRequest,
    @Default([]) List<ProductList>? productList,
    MyStoreResponse? myStoreResponse,
  }) = _CreateProductState;
}
