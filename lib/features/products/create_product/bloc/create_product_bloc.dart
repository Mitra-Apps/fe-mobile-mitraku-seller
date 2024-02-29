// ignore_for_file: lines_longer_than_80_chars

import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mitraku_seller/core/bloc_core/ui_status.dart';
import 'package:mitraku_seller/data/repositories/product/remote/product_repository.dart';
import 'package:mitraku_seller/data/repositories/store/remote/store_repository.dart';
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
    required StoreRepository storeRepository,
  }) : super(const CreateProductState()) {
    _repository = productRepository;
    _repositoryStore = storeRepository;
    _log = logService;

    on<_Init>(_init);

    on<_OnChangedProductCategory>(_onChangedProductCategory);
    on<_OnChangedProductType>(_onChangedProductType);
    on<_AddItemProduct>(_addItemProduct);
    on<_DeleteItemProduct>(_deleteItemProduct);
    on<_ProductSubmitted>(_productSubmitted);

    on<_OnChangedItemName>(_onChangedItemName);
    on<_OnChangedItemPrice>(_onChangedItemPrice);
    on<_OnChangedItemStock>(_onChangedItemStock);
    on<_OnChangedUomId>(_onChangedUomId);
    on<_OnChangedSaleStatus>(_onChangedSaleStatus);
  }

  late final ProductRepository _repository;
  late final StoreRepository _repositoryStore;
  late final LogService _log;

  FutureOr<void> _onChangedProductCategory(_OnChangedProductCategory event, Emitter<CreateProductState> emit) async {
    emit(
      state.copyWith(productCategoryId: event.value),
    );
    if (event.value?.isNotEmpty ?? true) {
      await getProductType(emit, event.value!);
    }
  }

  FutureOr<void> _onChangedProductType(_OnChangedProductType event, Emitter<CreateProductState> emit) async {
    emit(
      state.copyWith(productTypeId: event.value),
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

  bool isValidToSave(List<ProductList>? productList) {
    var isValid = true;
    productList?.forEach((item) {
      if (item.name?.isEmpty ?? true) {
        isValid = false;
      }

      if (item.price == null) {
        isValid = false;
      }

      if (item.saleStatus == null) {
        isValid = false;
      }

      if (item.stock?.isEmpty ?? true) {
        isValid = false;
      }

      if (item.uomId?.isEmpty ?? true) {
        isValid = false;
      }

      if (item.productTypeId?.isEmpty ?? true) {
        isValid = false;
      }
    });
    return isValid;
  }

  FutureOr<void> _addItemProduct(
    _AddItemProduct event,
    Emitter<CreateProductState> emit,
  ) {
    final data = state.productPostRequest.productList?.toList();
    data?.add(event.value);
    emit(state.copyWith(productPostRequest: state.productPostRequest.copyWith(productList: data)));
  }

  FutureOr<void> _deleteItemProduct(
    _DeleteItemProduct event,
    Emitter<CreateProductState> emit,
  ) {
    final data = state.productPostRequest.productList?.toList();
    if (data?.remove(event.productList) ?? true) {
      emit(state.copyWith(productPostRequest: state.productPostRequest.copyWith(productList: data)));
    }
  }

  FutureOr<void> _onChangedItemName(
    _OnChangedItemName event,
    Emitter<CreateProductState> emit,
  ) {
    final data = state.productPostRequest.productList?.toList();
    final productList = data?[event.index];
    if (productList != null) {
      data?[event.index] = productList.copyWith(name: event.value, productTypeId: state.productTypeId);
      emit(
        state.copyWith(
          productPostRequest: state.productPostRequest.copyWith(productList: data),
          isValid: isValidToSave(data),
        ),
      );
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
      emit(
        state.copyWith(
          productPostRequest: state.productPostRequest.copyWith(productList: data),
          isValid: isValidToSave(data),
        ),
      );
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
      emit(
        state.copyWith(
          productPostRequest: state.productPostRequest.copyWith(productList: data),
          isValid: isValidToSave(data),
        ),
      );
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
      emit(
        state.copyWith(
          productPostRequest: state.productPostRequest.copyWith(productList: data),
          isValid: isValidToSave(data),
        ),
      );
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
      emit(
        state.copyWith(
          productPostRequest: state.productPostRequest.copyWith(productList: data),
          isValid: isValidToSave(data),
        ),
      );
    }
  }

  FutureOr<void> _init(
    _Init event,
    Emitter<CreateProductState> emit,
  ) async {
    if (state.productPostRequest.productList?.isEmpty ?? true) {
      final List<ProductList> data = [const ProductList()];
      emit(state.copyWith(productPostRequest: state.productPostRequest.copyWith(productList: data)));
    }

    await getProductCategory(emit);
  }

  Future<void> getProductCategory(
    Emitter<CreateProductState> emit,
  ) async {
    emit(state.copyWith(status: const UILoading()));
    try {
      final BaseResponse<List<ProductCategoryResponse>> response = await _repository.getProductCategory();
      emit(state.copyWith(dataProductCategory: response.data));
      await getUom(emit);
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

  FutureOr<void> getUom(
    Emitter<CreateProductState> emit,
  ) async {
    try {
      final BaseResponse<List<UomResponse>> response = await _repository.getUom();
      emit(state.copyWith(dataUom: response.data));
      await getMyStore(emit);
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

  FutureOr<void> getMyStore(
    Emitter<CreateProductState> emit,
  ) async {
    try {
      final BaseResponse<MyStoreResponse> response = await _repositoryStore.getMyStore();
      emit(
        state.copyWith(
          notification: _NotificationNotifySuccess(
            message: response.message,
          ),
          status: const UILoadSuccess(),
          myStoreResponse: response.data,
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

  FutureOr<void> _productSubmitted(
    _ProductSubmitted event,
    Emitter<CreateProductState> emit,
  ) async {
    try {
      final data = state.productPostRequest.copyWith(storeId: state.myStoreResponse?.id);
      final BaseResponse response = await _repository.createProduct(data);
      if (response.code is int && response.code == 0) {
        emit(
          state.copyWith(
            notification: _NotificationNotifySuccess(
              message: 'Membuat Product Berhasil',
            ),
          ),
        );
      }
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
