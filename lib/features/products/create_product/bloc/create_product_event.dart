part of 'create_product_bloc.dart';

@freezed
class CreateProductEvent with _$CreateProductEvent {
  const factory CreateProductEvent.onChangedProductType({
    required String? value,
  }) = _OnChangedProductType;

  const factory CreateProductEvent.onChangedProductCategory({
    required String? value,
  }) = _OnChangedProductCategory;

  const factory CreateProductEvent.initListProduct() = _InitListProduct;

  const factory CreateProductEvent.addItemProduct({
    required ProductList value,
  }) = _AddItemProduct;

  const factory CreateProductEvent.updateItemProduct({
    required ProductList value,
    required int index,
  }) = _UpdateItemProduct;

  const factory CreateProductEvent.deleteItemProduct({
    required int index,
  }) = _DeleteItemProduct;

  const factory CreateProductEvent.getProductCategory() = _GetProductCategory;
  
  const factory CreateProductEvent.getUom() = _GetUom;

  const factory CreateProductEvent.onChangedItemName({
    required int index,
    required String? value,
  }) = _OnChangedItemName;

  const factory CreateProductEvent.onChangedItemPrice({
    required int index,
    required String? value,
  }) = _OnChangedItemPrice;

  const factory CreateProductEvent.onChangedItemStock({
    required int index,
    required String? value,
  }) = _OnChangedItemStock;

  const factory CreateProductEvent.onChangedUomId({
    required int index,
    required String? value,
  }) = _OnChangedUomId;

  const factory CreateProductEvent.onChangedSaleStatus({
    required int index,
    required bool? value,
  }) = _OnChangedSaleStatus;
}
