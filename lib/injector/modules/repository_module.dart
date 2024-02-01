import 'package:mitraku_seller/data/repositories/dog_image_random/remote/dog_image_random_repository.dart';
import 'package:mitraku_seller/data/repositories/dog_image_random/remote/dog_image_random_repository_impl.dart';
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
      ..registerFactory<StoreRepository>(
        () => StoreRepositoryImpl(
          storeApiClient: injector(),
        ),
      );
  }
}
