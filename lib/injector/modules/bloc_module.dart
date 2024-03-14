import 'package:flutter/foundation.dart';
import 'package:mitraku_seller/features/app/bloc/app_bloc.dart';
import 'package:mitraku_seller/features/buat_toko/bloc/buat_toko_bloc.dart';
import 'package:mitraku_seller/features/demo/bloc/demo_bloc.dart';
import 'package:mitraku_seller/features/dog_image_random/bloc/dog_image_random_bloc.dart';
import 'package:mitraku_seller/features/home/bloc/toko_anda_bloc.dart';
import 'package:mitraku_seller/features/login/bloc/login_bloc.dart';
import 'package:mitraku_seller/features/otp/bloc/otp_confirmation_bloc.dart';
import 'package:mitraku_seller/features/register/bloc/register_bloc.dart';
import 'package:mitraku_seller/injector/injector.dart';

class BlocModule {
  BlocModule._();

  static void init() {
    final injector = Injector.instance;

    injector
      ..registerLazySingleton<AppBloc>(
        () => AppBloc(
          appService: injector(),
          logService: injector(),
        ),
      )
      ..registerFactory<DogImageRandomBloc>(
        () => DogImageRandomBloc(
          dogImageRandomRepository: injector(),
          dogImageLocalRepository: kIsWeb ? null : injector(),
          logService: injector(),
        ),
      )
      ..registerFactory<DemoBloc>(
        () => DemoBloc(
          dogImageRandomRepository: injector(),
          logService: injector(),
        ),
      )
      ..registerFactory<RegisterBloc>(
        () => RegisterBloc(
            registerRepository: injector(), logService: injector()),
      )
      ..registerFactory<LoginBloc>(
        () => LoginBloc(loginRepository: injector(), logService: injector()),
      )
      ..registerFactory<OtpConfirmationBloc>(
        () => OtpConfirmationBloc(
            otpConfirmationRepository: injector(), logService: injector()),
      )
      ..registerFactory<TokoAndaBloc>(
        () => TokoAndaBloc(
            tokoAndaRepository: injector(), logService: injector()),
      )
      ..registerFactory<BuatTokoBloc>(() =>
          BuatTokoBloc(buatTokoRepository: injector(), logService: injector()));
  }
}
