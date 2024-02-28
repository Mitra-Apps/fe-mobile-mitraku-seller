// ignore_for_file: lines_longer_than_80_chars

import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mitraku_seller/core/bloc_core/ui_status.dart';
import 'package:mitraku_seller/data/repositories/product/remote/product_repository.dart';
import 'package:mitraku_seller/services/log_service/log_service.dart';
import 'package:rest_client/rest_client.dart';

part 'create_product_event.dart';
part 'create_product_state.dart';
part 'create_product_bloc.freezed.dart';
part 'create_product_notification.dart';

class CreateProductBloc extends Bloc<CreateProductEvent, CreateProductState> {
  CreateProductBloc({
    required ProductRepository productRepository,
    required LogService logService,
  }) : super(const CreateProductState()) {
    _repository = productRepository;
    _log = logService;

    on<_GetProductCategory>(_getProductCategory);
    on<_GetUom>(_getUom);
    on<_OnChangedProductCategory>(_onChangedProductCategory);
    on<_OnChangedProductType>(_onChangedProductType);
    on<_InitListProduct>(__initListProduct);
    on<_AddItemProduct>(_addItemProduct);

    on<_OnChangedItemName>(_onChangedItemName);
    on<_OnChangedItemPrice>(_onChangedItemPrice);
    on<_OnChangedItemStock>(_onChangedItemStock);
    on<_OnChangedUomId>(_onChangedUomId);
    on<_OnChangedSaleStatus>(_onChangedSaleStatus);
  }

  late final ProductRepository _repository;
  late final LogService _log;

  FutureOr<void> _getProductCategory(
    _GetProductCategory event,
    Emitter<CreateProductState> emit,
  ) async {
    emit(state.copyWith(status: const UILoading()));
    try {
      final BaseResponse<List<ProductCategoryResponse>> response = await _repository.getProductCategory();
      emit(
        state.copyWith(
          notification: _NotificationNotifySuccess(
            message: response.message,
          ),
          status: const UILoadSuccess(),
          dataProductCategory: response.data,
        ),
      );
    } on DioException catch (e, s) {
      if (e.response != null) {
        _log.e(e.message.toString(), e, s);
        final errorResponse = ErrorResponse.fromJson(e.response?.data);
        emit(
          state.copyWith(
            notification: _NotificationNotifyFailed(
              message: errorResponse.message,
            ),
            status: UILoadFailed(message: errorResponse.message),
            errorResponse: errorResponse,
          ),
        );
      }
    }
  }

  FutureOr<void> _onChangedProductCategory(_OnChangedProductCategory event, Emitter<CreateProductState> emit) async {
    final ProductPostRequest data = state.productPostRequest.copyWith(productCategoryId: event.value);

    emit(
      state.copyWith(
        productPostRequest: data,
        isValid: isValidToSave(data),
      ),
    );
    if (event.value?.isNotEmpty ?? true) {
      await getProductType(emit, event.value!);
    }
  }

  FutureOr<void> _onChangedProductType(_OnChangedProductType event, Emitter<CreateProductState> emit) async {
    final ProductPostRequest data = state.productPostRequest.copyWith(productTypeId: event.value);
    emit(
      state.copyWith(
        productPostRequest: data,
        isValid: isValidToSave(data),
      ),
    );
  }

  Future<void> getProductType(
    Emitter<CreateProductState> emit,
    String value,
  ) async {
    try {
      final BaseResponse<List<ProductTypeResponse>> response = await _repository.getProductType(value);
      emit(
        state.copyWith(
          notification: _NotificationNotifySuccess(
            message: response.message,
          ),
          status: const UILoadSuccess(),
          dataProductType: response.data,
        ),
      );
    } on DioException catch (e, s) {
      if (e.response != null) {
        _log.e(e.message.toString(), e, s);
        final errorResponse = ErrorResponse.fromJson(e.response?.data);
        emit(
          state.copyWith(
            notification: _NotificationNotifyFailed(
              message: errorResponse.message,
            ),
            status: UILoadFailed(message: errorResponse.message),
            errorResponse: errorResponse,
          ),
        );
      }
    }
  }

  bool isValidToSave(ProductPostRequest data) {
    if (data.productCategoryId?.isEmpty ?? true) {
      return false;
    }

    if (data.productTypeId?.isEmpty ?? true) {
      return false;
    }
    return true;
  }

  FutureOr<void> __initListProduct(
    _InitListProduct event,
    Emitter<CreateProductState> emit,
  ) async {
    if (state.productPostRequest.productList?.isEmpty ?? true) {
      const ProductList product = ProductList();
      final List<ProductList> data = [product];
      emit(state.copyWith(productPostRequest: state.productPostRequest.copyWith(productList: data)));
    }
  }

  FutureOr<void> _addItemProduct(
    _AddItemProduct event,
    Emitter<CreateProductState> emit,
  ) {
    final data = state.productPostRequest.productList?.toList();
    data?.add(event.value);
    emit(state.copyWith(productPostRequest: state.productPostRequest.copyWith(productList: data)));
  }

  FutureOr<void> _onChangedItemName(
    _OnChangedItemName event,
    Emitter<CreateProductState> emit,
  ) {
    final data = state.productPostRequest.productList?.toList();
    final productList = data?[event.index];
    if (productList != null) {
      data?[event.index] = productList.copyWith(name: event.value);
      emit(state.copyWith(productPostRequest: state.productPostRequest.copyWith(productList: data)));
    }
  }

  FutureOr<void> _onChangedItemPrice(
    _OnChangedItemPrice event,
    Emitter<CreateProductState> emit,
  ) {
    final data = state.productPostRequest.productList?.toList();
    final productList = data?[event.index];
    if (productList != null) {
      data?[event.index] = productList.copyWith(price: int.parse(event.value!));
      emit(state.copyWith(productPostRequest: state.productPostRequest.copyWith(productList: data)));
    }
  }

  FutureOr<void> _onChangedItemStock(
    _OnChangedItemStock event,
    Emitter<CreateProductState> emit,
  ) {
    final data = state.productPostRequest.productList?.toList();
    final productList = data?[event.index];
    if (productList != null) {
      data?[event.index] = productList.copyWith(stock: event.value);
      emit(state.copyWith(productPostRequest: state.productPostRequest.copyWith(productList: data)));
    }
  }

  FutureOr<void> _onChangedUomId(
    _OnChangedUomId event,
    Emitter<CreateProductState> emit,
  ) {
    final data = state.productPostRequest.productList?.toList();
    final productList = data?[event.index];
    if (productList != null) {
      data?[event.index] = productList.copyWith(uomId: event.value);
      emit(state.copyWith(productPostRequest: state.productPostRequest.copyWith(productList: data)));
    }
  }

  FutureOr<void> _onChangedSaleStatus(
    _OnChangedSaleStatus event,
    Emitter<CreateProductState> emit,
  ) {
    final data = state.productPostRequest.productList?.toList();
    final productList = data?[event.index];
    if (productList != null) {
      data?[event.index] = productList.copyWith(saleStatus: event.value);
      emit(state.copyWith(productPostRequest: state.productPostRequest.copyWith(productList: data)));
    }
  }

  FutureOr<void> _getUom(
    _GetUom event,
    Emitter<CreateProductState> emit,
  ) async {
    try {
      final BaseResponse<List<UomResponse>> response = await _repository.getUom();
      emit(
        state.copyWith(
          notification: _NotificationNotifySuccess(
            message: response.message,
          ),
          status: const UILoadSuccess(),
          dataUom: response.data,
        ),
      );
    } on DioException catch (e, s) {
      if (e.response != null) {
        _log.e(e.message.toString(), e, s);
        final errorResponse = ErrorResponse.fromJson(e.response?.data);
        emit(
          state.copyWith(
            notification: _NotificationNotifyFailed(
              message: errorResponse.message,
            ),
            status: UILoadFailed(message: errorResponse.message),
            errorResponse: errorResponse,
          ),
        );
      }
    }
  }
}
