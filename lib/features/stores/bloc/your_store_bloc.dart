import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mitraku_seller/core/bloc_core/ui_status.dart';
import 'package:mitraku_seller/data/repositories/store/remote/store_repository.dart';
import 'package:mitraku_seller/services/log_service/log_service.dart';
import 'package:rest_client/rest_client.dart';

part 'your_store_bloc.freezed.dart';

part 'your_store_event.dart';

part 'your_store_notification.dart';

part 'your_store_state.dart';

class YourStoreBloc extends Bloc<YourStoreEvent, YourStoreState> {
  YourStoreBloc({
    required StoreRepository storeRepository,
    required LogService logService,
  }) : super(const YourStoreState()) {
    _repository = storeRepository;
    _log = logService;
    on<_GetMyStoreRequest>(_onGetMyStoreRequest);
    on<_PostCreateStoreRequest>(_onPostCreateStoreRequest);
    on<_PutEditStoreRequest>(_onPutEditStoreRequest);
  }

  late final StoreRepository _repository;
  late final LogService _log;

  FutureOr<void> _onGetMyStoreRequest(
    _GetMyStoreRequest event,
    Emitter<YourStoreState> emit,
  ) async {
    try {
      final BaseResponseNullable<MyStoreResponse> response =
          await _repository.getMyStore();
      emit(
        state.copyWith(
          notification: _NotificationNotifySuccess(
            message: response.message,
          ),
          status: const UILoadSuccess(),
          myStoreResponse: response.data,
          isBusy: false,
        ),
      );
    } on DioException catch (e, s) {
      _log.e('API FAILED', e, s);
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

  FutureOr<void> _onPostCreateStoreRequest(
    _PostCreateStoreRequest event,
    Emitter<YourStoreState> emit,
  ) async {
    try {
      final BaseResponseNullable<MyStoreResponse> response =
          await _repository.postCreateStore(event.createStorePostRequest);
      emit(
        state.copyWith(
          notification: _NotificationNotifySuccess(
            message: response.message,
          ),
          status: const UILoadSuccess(),
          myStoreResponse: response.data,
          isBusy: false,
        ),
      );
    } on DioException catch (e, s) {
      _log.e('API FAILED', e, s);
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

  FutureOr<void> _onPutEditStoreRequest(
    _PutEditStoreRequest event,
    Emitter<YourStoreState> emit,
  ) async {
    try {
      final BaseResponseNullable<MyStoreResponse> response =
          await _repository.putEditStore(
        event.storeId,
        event.editStorePutRequest,
      );
      emit(
        state.copyWith(
          notification: _NotificationNotifySuccess(
            message: response.message,
          ),
          status: const UILoadSuccess(),
          myStoreResponse: response.data,
          isBusy: false,
        ),
      );
    } on DioException catch (e, s) {
      _log.e('API FAILED', e, s);
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
