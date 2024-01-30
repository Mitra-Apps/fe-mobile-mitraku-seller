import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mitraku_seller/core/bloc_core/ui_status.dart';
import 'package:mitraku_seller/data/repositories/register/remote/register_repository.dart';
import 'package:mitraku_seller/services/log_service/log_service.dart';
import 'package:rest_client/rest_client.dart';

part 'register_bloc.freezed.dart';

part 'register_event.dart';

part 'register_notification.dart';

part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc(
      {required RegisterRepository registerRepository,
      required LogService logService,})
      : super(
          const RegisterState(),
        ) {
    _repository = registerRepository;
    _log = logService;
    on<_Loaded>(_onLoaded);
    on<_RegisterRequested>(_onRegister);
  }

  late final RegisterRepository _repository;
  late final LogService _log;

  FutureOr<void> _onLoaded(_Loaded event, Emitter<RegisterState> emit) {
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
      _RegisterRequested event, Emitter<RegisterState> emit,) async {
    try {
      emit(
        state.copyWith(
          isBusy: true,
        ),
      );

      final RegisterResponse registerResponse =
          await _repository.register(event.registerPost);

      emit(
        state.copyWith(
          isBusy: false,
          status: const UILoadSuccess(),
          registerResponse: registerResponse,
        ),
      );
    } on DioException catch (e) {
      if (e.response != null) {
        final errorResponse = RegisterErrorResponse.fromJson(e.response!.data);
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
