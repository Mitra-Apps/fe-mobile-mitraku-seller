import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mitraku_seller/core/bloc_core/ui_status.dart';
import 'package:mitraku_seller/data/repositories/auth/remote/auth_repository.dart';
import 'package:mitraku_seller/services/log_service/log_service.dart';
import 'package:rest_client/rest_client.dart';

part 'other_event.dart';
part 'other_state.dart';
part 'other_bloc.freezed.dart';

class OtherBloc extends Bloc<OtherEvent, OtherState> {

  OtherBloc({
    required AuthRepository authRepository,
    required LogService logService,
}) : super(
    const OtherState(),
  ) {
    _authRepository = authRepository;
    _log = logService;

    on<_Started>(_started);
    on<_LogoutRequested>(_onLogout);
  }

  late final AuthRepository _authRepository;
  late final LogService _log;

  FutureOr<void> _started(_Started event, Emitter<OtherState> emit) {
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

  Future<FutureOr<void>> _onLogout(
      _LogoutRequested event, Emitter<OtherState> emit,) async {
    try {

      final LogoutResponse logoutResponse =
      await _authRepository.logout(event.logoutPost);

      emit(
        state.copyWith(
          logoutResponse: logoutResponse,
          logoutStatus: 'SUKSES',
        ),
      );
    } on DioException catch (e) {
      if (e.response != null) {
        final errorResponse = ErrorResponse.fromJson(e.response!.data);
        emit(
          state.copyWith(
            loginBadRequest: errorResponse.code_detail
          ),
        );
      }
    }
  }
}
