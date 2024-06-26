import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mitraku_seller/core/bloc_core/ui_status.dart';
import 'package:mitraku_seller/data/repositories/auth/remote/auth_repository.dart';
import 'package:mitraku_seller/services/log_service/log_service.dart';
import 'package:rest_client/rest_client.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'login_bloc.freezed.dart';

part 'login_event.dart';

part 'login_notification.dart';

part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc({
    required AuthRepository authRepository,
    required LogService logService,
  }) : super(
          const LoginState(),
        ) {
    _repository = authRepository;
    _log = logService;
    on<_Loaded>(_onLoaded);
    on<_LoginRequested>(_onLogin);
  }

  late final AuthRepository _repository;
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
    _LoginRequested event,
    Emitter<LoginState> emit,
  ) async {
    try {
      emit(
        state.copyWith(
          isBusy: true,
        ),
      );

      final LoginResponse loginResponse =
          await _repository.login(event.loginPost);

      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(
        'access_token',
        loginResponse.data.accessToken,
      );
      await prefs.setString(
        'refresh_token',
        loginResponse.data.refreshToken,
      );
      await prefs.setString('email', event.loginPost.email);
      await prefs.setString('password', event.loginPost.password);

      emit(
        state.copyWith(
          isBusy: false,
          notification: _NotificationNotifySuccess(
            message: 'Selamat berhasil masuk',
          ),
          status: const UILoadSuccess(),
          loginResponse: loginResponse,
          loginSuccess: 'SUCCESSLOGIN',
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
              loginBadRequest: errorResponse.code_detail),
        );
      }
    }
  }
}
