part of 'create_product_bloc.dart';

@freezed
class CreateProductState with _$CreateProductState {
  const factory CreateProductState({
    @Default(UIInitial()) UIStatus status,
    CreateProductNotification? notification,
    @Default('') String typeCategoryId,
    @Default(false) bool isValid,
    @Default([]) List<ProductCategoryResponse> dataProductCategory,
    @Default([]) List<ProductTypeResponse> dataProductType,
    @Default([]) List<UomResponse> dataUom,
    ErrorResponse? errorResponse,
    @Default(ProductPostRequest()) ProductPostRequest productPostRequest,
    @Default([]) List<ProductList>? productList,
  }) = _CreateProductState;
}
