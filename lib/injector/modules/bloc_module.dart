import 'package:flutter/foundation.dart';
import 'package:mitraku_seller/features/app/bloc/app_bloc.dart';
import 'package:mitraku_seller/features/demo/bloc/demo_bloc.dart';
import 'package:mitraku_seller/features/dog_image_random/bloc/dog_image_random_bloc.dart';
import 'package:mitraku_seller/features/forgotpassword/bloc/forgot_password_bloc.dart';
import 'package:mitraku_seller/features/home/view/other/bloc/other_bloc.dart';
import 'package:mitraku_seller/features/home/view/product/bloc/product_bloc.dart';
import 'package:mitraku_seller/features/login/bloc/login_bloc.dart';
import 'package:mitraku_seller/features/otp/bloc/otp_confirmation_bloc.dart';
import 'package:mitraku_seller/features/products/create_product/bloc/create_product_bloc.dart';
import 'package:mitraku_seller/features/register/bloc/register_bloc.dart';
import 'package:mitraku_seller/features/stores/bloc/your_store_bloc.dart';
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
          registerRepository: injector(),
          logService: injector(),
        ),
      )
      ..registerFactory<LoginBloc>(
        () => LoginBloc(authRepository: injector(), logService: injector()),
      )
      ..registerFactory<OtpConfirmationBloc>(
        () => OtpConfirmationBloc(
          otpConfirmationRepository: injector(),
          logService: injector(),
        ),
      )
      ..registerFactory<ForgotPasswordBloc>(
        () => ForgotPasswordBloc(
          forgotPasswordRepository: injector(),
          logService: injector(),
        ),
      )
      ..registerFactory<CreateProductBloc>(
        () => CreateProductBloc(
          productRepository: injector(),
          logService: injector(),
          storeRepository: injector(),
        ),
      )
      ..registerFactory<YourStoreBloc>(
        () => YourStoreBloc(
          storeRepository: injector(),
          logService: injector(),
        ),
      )
      ..registerFactory<OtherBloc>(
        () => OtherBloc(
          authRepository: injector(),
          logService: injector(),
        ),
      )
      ..registerFactory<ProductBloc>(
        () => ProductBloc(
          productRepository: injector(),
          logService: injector(),
          storeRepository: injector(),
        ),
      );
  }
}
