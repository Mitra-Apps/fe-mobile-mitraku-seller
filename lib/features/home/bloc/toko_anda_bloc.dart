import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mitraku_seller/core/bloc_core/ui_status.dart';
import 'package:mitraku_seller/data/repositories/toko_anda/remote/toko_anda_repository.dart';
import 'package:mitraku_seller/services/log_service/log_service.dart';
import 'package:rest_client/rest_client.dart';

part 'toko_anda_bloc.freezed.dart';

part 'toko_anda_event.dart';

part 'toko_anda_notification.dart';

part 'toko_anda_state.dart';

class TokoAndaBloc extends Bloc<TokoAndaEvent, TokoAndaState> {
  TokoAndaBloc({
    required TokoAndaRepository tokoAndaRepository,
    required LogService logService,
  }) : super(
          const TokoAndaState(),
        ) {
    _repository = tokoAndaRepository;
    _log = logService;
    on<_LoadedX>(_onLoaded);
    on<_MyStoreGetRequested>(_onMyStoreRequested);
    // on<_LoginRequestedX>(_onLogin);
  }

  late final TokoAndaRepository _repository;
  late final LogService _log;
  // late final LoginRepository _repository;
  // late final LogService _log;

  FutureOr<void> _onLoaded(_LoadedX event, Emitter<TokoAndaState> emit) {
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

  FutureOr<void> _onMyStoreRequested(
    _MyStoreGetRequested event,
    Emitter<TokoAndaState> emit,
  ) async {
    try {
      emit(
        state.copyWith(
          isBusy: true,
        ),
      );

      final TokoAndaResponse response = await _repository.getMyStore();

      emit(
        state.copyWith(
          isBusy: false,
          notification: _NotificationNotifySuccess(
            message: 'Selamat berhasil masuk',
          ),
          status: const UILoadSuccess(),
          tokoAndaResponse: response,
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
