import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mitraku_seller/core/bloc_core/ui_status.dart';
import 'package:mitraku_seller/data/repositories/login/remote/login_repository.dart';
import 'package:mitraku_seller/services/log_service/log_service.dart';
import 'package:rest_client/rest_client.dart';

part 'login_bloc.freezed.dart';

part 'login_event.dart';

part 'login_notification.dart';

part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(
      {required LoginRepository loginRepository,
        required LogService logService,})
      : super(
    const LoginState(),
  ) {
    _repository = loginRepository;
    _log = logService;
    on<_Loaded>(_onLoaded);
    on<_LoginRequested>(_onLogin);
  }

  late final LoginRepository _repository;
  late final LogService _log;

  FutureOr<void> _onLoaded(_Loaded event, Emitter<LoginState> emit) {
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

  Future<FutureOr<void>> _onLogin(
      _LoginRequested event, Emitter<LoginState> emit,) async {
    try {
      emit(
        state.copyWith(
          isBusy: true,
        ),
      );

      final LoginResponse loginResponse =
      await _repository.login(event.loginPost);

      emit(
        state.copyWith(
          isBusy: false,
          notification: _NotificationNotifySuccess(
            message: 'Selamat berhasil masuk',
          ),
          status: const UILoadSuccess(),
          loginResponse: loginResponse,
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
