import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mitraku_seller/core/bloc_core/ui_status.dart';
import 'package:mitraku_seller/data/repositories/buat_toko/buat_toko_repository.dart';
import 'package:mitraku_seller/services/log_service/log_service.dart';
import 'package:rest_client/rest_client.dart';

part 'buat_toko_bloc.freezed.dart';

part 'buat_toko_event.dart';

part 'buat_toko_notification.dart';

part 'buat_toko_state.dart';

class BuatTokoBloc extends Bloc<BuatTokoEvent, BuatTokoState> {
  BuatTokoBloc({
    required BuatTokoRepository buatTokoRepository,
    required LogService logService,
  }) : super(
          const BuatTokoState(),
        ) {
    _repository = buatTokoRepository;
    _log = logService;
    on<_Loaded>(_onLoaded);
    on<_MyStorePostRequested>(_onMyStorePostRequested);
    on<_MyStorePutRequested>(_onMyStorePutRequested);
    // on<_LoginRequestedX>(_onLogin);
  }

  late final BuatTokoRepository _repository;
  late final LogService _log;
  // late final LoginRepository _repository;
  // late final LogService _log;

  FutureOr<void> _onLoaded(_Loaded event, Emitter<BuatTokoState> emit) {
    try {
      emit(
        state.copyWith(status: const UILoading()),
      );

      emit(
        state.copyWith(status: const UILoadSuccess()),
      );
    } catch (e, s) {
      _log.e('Register failed', e, s);
      emit(
        state.copyWith(
          status: UILoadFailed(message: e.toString()),
        ),
      );
    }
  }

  FutureOr<void> _onMyStorePostRequested(
    _MyStorePostRequested event,
    Emitter<BuatTokoState> emit,
  ) async {
    try {
      emit(
        state.copyWith(
          isBusy: true,
        ),
      );

      final BuatTokoResponse response = await _repository.postCreateStore();

      emit(
        state.copyWith(
          isBusy: false,
          notification: _NotificationNotifySuccess(
            message: 'Selamat berhasil masuk',
          ),
          status: const UILoadSuccess(),
          buatTokoResponse: response,
        ),
      );
    } on DioException catch (e) {
      if (e.response != null) {
        final errorResponse = ErrorResponse.fromJson(e.response!.data);
        emit(
          state.copyWith(
            isBusy: false,
            notification: _NotificationNotifyFailed(
              message: errorResponse.message,
            ),
          ),
        );
      }
    }
  }

  FutureOr<void> _onMyStorePutRequested(
    _MyStorePutRequested event,
    Emitter<BuatTokoState> emit,
  ) async {
    try {
      emit(
        state.copyWith(
          isBusy: true,
        ),
      );

      final BuatTokoResponse response = await _repository.putCreateStore();

      emit(
        state.copyWith(
          isBusy: false,
          notification: _NotificationNotifySuccess(
            message: 'Selamat berhasil masuk',
          ),
          status: const UILoadSuccess(),
          buatTokoResponse: response,
        ),
      );
    } on DioException catch (e) {
      if (e.response != null) {
        final errorResponse = ErrorResponse.fromJson(e.response!.data);
        emit(
          state.copyWith(
            isBusy: false,
            notification: _NotificationNotifyFailed(
              message: errorResponse.message,
            ),
          ),
        );
      }
    }
  }
}
