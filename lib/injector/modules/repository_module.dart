import 'package:mitraku_seller/data/repositories/auth/remote/auth_repository.dart';
import 'package:mitraku_seller/data/repositories/auth/remote/auth_repository_impl.dart';
import 'package:mitraku_seller/data/repositories/dog_image_random/remote/dog_image_random_repository.dart';
import 'package:mitraku_seller/data/repositories/dog_image_random/remote/dog_image_random_repository_impl.dart';
import 'package:mitraku_seller/data/repositories/forgot_password/remote/forgot_password_repository.dart';
import 'package:mitraku_seller/data/repositories/forgot_password/remote/forgot_password_repository_impl.dart';
import 'package:mitraku_seller/data/repositories/otp/otp_confirmation_repository.dart';
import 'package:mitraku_seller/data/repositories/otp/otp_confirmation_repository_impl.dart';
import 'package:mitraku_seller/data/repositories/product/remote/product_repository.dart';
import 'package:mitraku_seller/data/repositories/product/remote/product_repository_impl.dart';
import 'package:mitraku_seller/data/repositories/register/remote/register_repository.dart';
import 'package:mitraku_seller/data/repositories/register/remote/register_repository_impl.dart';
import 'package:mitraku_seller/data/repositories/store/remote/store_repository.dart';
import 'package:mitraku_seller/data/repositories/store/remote/store_repository_impl.dart';
import 'package:mitraku_seller/injector/injector.dart';

class RepositoryModule {
  RepositoryModule._();

  static void init() {
    final injector = Injector.instance;

    injector
      ..registerFactory<DogImageRandomRepository>(
        () => DogImageRandomRepositoryImpl(
          dogApiClient: injector(),
        ),
      )
      ..registerFactory<RegisterRepository>(
        () => RegisterRepositoryImpl(
          registerApiClient: injector(),
        ),
      )
      ..registerFactory<AuthRepository>(
        () => AuthRepositoryImpl(authApiClient: injector()),
      )
      ..registerFactory<OtpConfirmationRepository>(
        () => OtpConfirmationRepositoryImpl(otpApiClient: injector()),
      )
      ..registerFactory<ForgotPasswordRepository>(
        () => ForgotPasswordRepositoryImpl(forgotPasswordApiClient: injector()),
      )
      ..registerFactory<ProductRepository>(
        () => ProductRepositoryImpl(productApiClient: injector()),
      )
      ..registerFactory<StoreRepository>(
        () => StoreRepositoryImpl(storeApiClient: injector()),
      );
  }
}
