part of 'create_product_bloc.dart';

@freezed
class CreateProductEvent with _$CreateProductEvent {
  const factory CreateProductEvent.init() = _Init;

  ///onChange Main Product Form
  const factory CreateProductEvent.onChangedProductType({
    required String? value,
  }) = _OnChangedProductType;

  const factory CreateProductEvent.onChangedProductCategory({
    required String? value,
  }) = _OnChangedProductCategory;

  const factory CreateProductEvent.productSubmitted() = _ProductSubmitted;

  ///CRUD Product
  const factory CreateProductEvent.addItemProduct({
    required ProductList value,
  }) = _AddItemProduct;

  const factory CreateProductEvent.updateItemProduct({
    required ProductList value,
    required int index,
  }) = _UpdateItemProduct;

  const factory CreateProductEvent.deleteItemProduct({
    required int index,
    required ProductList productList,
  }) = _DeleteItemProduct;

  ///On Change Product Item
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
