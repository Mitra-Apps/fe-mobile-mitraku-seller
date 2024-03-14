import 'package:mitraku_seller/data/repositories/buat_toko/buat_toko_repository.dart';
import 'package:mitraku_seller/data/repositories/buat_toko/buat_toko_repository_impl.dart';
import 'package:mitraku_seller/data/repositories/dog_image_random/remote/dog_image_random_repository.dart';
import 'package:mitraku_seller/data/repositories/dog_image_random/remote/dog_image_random_repository_impl.dart';
import 'package:mitraku_seller/data/repositories/login/remote/login_repository.dart';
import 'package:mitraku_seller/data/repositories/login/remote/login_repository_impl.dart';
import 'package:mitraku_seller/data/repositories/otp/otp_confirmation_repository.dart';
import 'package:mitraku_seller/data/repositories/otp/otp_confirmation_repository_impl.dart';
import 'package:mitraku_seller/data/repositories/register/remote/register_repository.dart';
import 'package:mitraku_seller/data/repositories/register/remote/register_repository_impl.dart';
import 'package:mitraku_seller/data/repositories/toko_anda/remote/toko_anda_repository.dart';
import 'package:mitraku_seller/data/repositories/toko_anda/remote/toko_anda_repository_impl.dart';
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
      ..registerFactory<LoginRepository>(
        () => LoginRepositoryImpl(loginApiClient: injector()),
      )
      ..registerFactory<OtpConfirmationRepository>(
        () => OtpConfirmationRepositoryImpl(otpApiClient: injector()),
      )
      ..registerFactory<TokoAndaRepository>(
        () => TokoAndaRepositoryImpl(tokoAndaApi: injector()),
      )
      ..registerFactory<BuatTokoRepository>(
        () => BuatTokoRepositoryImpl(buatTokoApi: injector()),
      );
  }
}
