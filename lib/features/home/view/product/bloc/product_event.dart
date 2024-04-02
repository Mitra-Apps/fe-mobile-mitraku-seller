part of 'product_bloc.dart';

@freezed
class ProductEvent with _$ProductEvent{
  const factory ProductEvent.init() = _Init;
  const factory ProductEvent.getProductList() = _GetProductList;
}
