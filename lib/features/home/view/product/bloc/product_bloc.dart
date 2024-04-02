import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mitraku_seller/core/bloc_core/ui_status.dart';
import 'package:mitraku_seller/data/repositories/product/remote/product_repository.dart';
import 'package:mitraku_seller/data/repositories/store/remote/store_repository.dart';
import 'package:mitraku_seller/services/log_service/log_service.dart';
import 'package:rest_client/rest_client.dart';

part 'product_bloc.freezed.dart';
part 'product_event.dart';
part 'product_notification.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc({
    required ProductRepository productRepository,
    required LogService logService,
    required StoreRepository storeRepository,
  }) : super(const ProductState()) {
    _repository = productRepository;
    _repositoryStore = storeRepository;
    _log = logService;

    on<_Init>(_init);
  }

  late final ProductRepository _repository;
  late final StoreRepository _repositoryStore;
  late final LogService _log;

  FutureOr<void> _init(
    _Init event,
    Emitter<ProductState> emit,
  ) async {
    emit(
      state.copyWith(
        isBusy: true,
        status: const UILoading(),
      ),
    );
    await getMyStore(emit);
  }

  FutureOr<void> getMyStore(
    Emitter<ProductState> emit,
  ) async {
    try {
      final BaseResponse<MyStoreResponse> response =
          await _repositoryStore.getMyStore();
      if (response.data != null) {
        emit(
          state.copyWith(
            isBusy: false,
            status: const UILoadSuccess(),
            myStoreResponse: response.data,
            isMyStoreExist: true,
          ),
        );
      } else {
        emit(
          state.copyWith(
            isBusy: false,
            status: const UILoadSuccess(),
            myStoreResponse: response.data,
            isMyStoreExist: false,
          ),
        );
      }
      await getProductList(emit);
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
          ),
        );
      }
    }
  }

  FutureOr<void> getProductList(
    Emitter<ProductState> emit,
  ) async {
    emit(
      state.copyWith(
        isBusy: true,
        status: const UILoading(),
      ),
    );

    try {
      final BaseResponse<List<ProductResponse>> response =
          await _repository.getProductList(state.myStoreResponse!.id);

      emit(
        state.copyWith(
          isBusy: false,
          status: const UILoadSuccess(),
          productList: response.data,
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
          ),
        );
      }
    }
  }
}
