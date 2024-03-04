import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mitraku_seller/core/bloc_core/ui_status.dart';
import 'package:mitraku_seller/data/repositories/forgot_password/remote/forgot_password_repository.dart';
import 'package:mitraku_seller/services/log_service/log_service.dart';
import 'package:rest_client/rest_client.dart';

part 'forgot_password_bloc.freezed.dart';

part 'forgot_password_event.dart';

part 'forgot_password_notification.dart';

part 'forgot_password_state.dart';

class ForgotPasswordBloc extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {
  ForgotPasswordBloc(
      {required ForgotPasswordRepository forgotPasswordRepository,
        required LogService logService,})
      : super(
    const ForgotPasswordState(),
  ) {
    _repository = forgotPasswordRepository;
    _log = logService;
    on<_Loaded>(_onLoaded);
    on<_ForgotPassRequested>(_onForgotPass);
    on<_ReqOtpRequested>(_onReqOtp);
  }

  late final ForgotPasswordRepository _repository;
  late final LogService _log;

  FutureOr<void> _onLoaded(_Loaded event, Emitter<ForgotPasswordState> emit) {
    try {
      emit(
        state.copyWith(status: const UILoading()),
      );

      emit(
        state.copyWith(status: const UILoadSuccess()),
      );
    } catch (e, s) {
      _log.e('Forgot Password failed', e, s);
      emit(
        state.copyWith(
          status: UILoadFailed(message: e.toString()),
        ),
      );
    }
  }

  Future<FutureOr<void>> _onForgotPass(
      _ForgotPassRequested event, Emitter<ForgotPasswordState> emit,) async {
    try {
      emit(
        state.copyWith(
          isBusy: true,
        ),
      );

      final LoginResponse loginResponse =
      await _repository.forgotPassword(event.forgotPasswordPost);

      emit(
        state.copyWith(
          isBusy: false,
          notification: _NotificationNotifySuccess(
            message: loginResponse.message,
          ),
          status: const UILoadSuccess(),
          loginResponse: loginResponse,
          forgotPassSuccess: 'SUCCESSFORGOT',
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
              forgotPassBadRequest: errorResponse.code_detail
          ),
        );
      }
    }
  }

  Future<FutureOr<void>> _onReqOtp(
      _ReqOtpRequested event, Emitter<ForgotPasswordState> emit,) async {
    try {
      emit(
        state.copyWith(
          isBusy: true,
        ),
      );

      final ResendOTPResponse resendOTPResponse =
      await _repository.reqOtp(event.resendOTPPost);

      emit(
        state.copyWith(
          isBusy: false,
          resendOTPResponse: resendOTPResponse,
          forgotPassSuccess: 'SUCCESSREQOTP',
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
              forgotPassBadRequest: errorResponse.code_detail
          ),
        );
      }
    }
  }
}
