import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mitraku_seller/core/bloc_core/ui_status.dart';
import 'package:mitraku_seller/data/repositories/otp/otp_confirmation_repository.dart';
import 'package:mitraku_seller/services/log_service/log_service.dart';
import 'package:rest_client/rest_client.dart';

part 'otp_confirmation_bloc.freezed.dart';

part 'otp_confirmation_event.dart';

part 'otp_confirmation_notification.dart';

part 'otp_confirmation_state.dart';

class OtpConfirmationBloc extends Bloc<OtpConfirmationEvent, OtpConfirmationState> {
  OtpConfirmationBloc(
      {required OtpConfirmationRepository otpConfirmationRepository,
        required LogService logService,})
      : super(
    const OtpConfirmationState(),
  ) {
    _repository = otpConfirmationRepository;
    _log = logService;
    on<_Loaded>(_onLoaded);
    on<_OtpConfrimationRequested>(_onRegister);
    on<_ResendOtpRequested>(_onResendOtp);
  }

  late final OtpConfirmationRepository _repository;
  late final LogService _log;

  FutureOr<void> _onLoaded(_Loaded event, Emitter<OtpConfirmationState> emit) {
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

  Future<FutureOr<void>> _onRegister(
      _OtpConfrimationRequested event, Emitter<OtpConfirmationState> emit,) async {
    try {
      emit(
        state.copyWith(
          isBusy: true,
        ),
      );

      final LoginResponse loginResponse =
      await _repository.otpConfirmation(event.otpConfirmationPost);

      emit(
        state.copyWith(
            isBusy: false,
            status: const UILoadSuccess(),
            loginResponse: loginResponse,
            notification: _NotificationNotifySuccess(
                message: 'Verifikasi OTP Berhasil'),
            otpSuccess: 'OTPSUCCESS'
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
            otpBadRequest: errorResponse.code_detail
          ),
        );
      }
    }
  }

  Future<FutureOr<void>> _onResendOtp(
      _ResendOtpRequested event, Emitter<OtpConfirmationState> emit,) async {
    try {
      emit(
        state.copyWith(
          isBusy: true,
        ),
      );

      final ResendOTPResponse resendOTPResponse =
      await _repository.resendOtp(event.resendOTPPost);

      emit(
        state.copyWith(
            isBusy: false,
            resendOTPResponse: resendOTPResponse,
            notification: _NotificationNotifySuccess(
                message: 'OTP berhasil dikirim ke email'),
            otpSuccess: 'RESENDSUCCESS'
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
              otpBadRequest: errorResponse.code_detail
          ),
        );
      }
    }
  }
}