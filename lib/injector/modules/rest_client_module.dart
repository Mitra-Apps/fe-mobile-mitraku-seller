import 'package:mitraku_seller/injector/injector.dart';
import 'package:mitraku_seller/injector/modules/dio_module.dart';
import 'package:rest_client/rest_client.dart';

class RestClientModule {
  RestClientModule._();

  static void init() {
    final injector = Injector.instance;

    injector
      ..registerFactory<DogApiClient>(
        () => DogApiClient(
          injector(instanceName: DioModule.dioInstanceName),
        ),
      )
      ..registerFactory<RegisterApiClient>(
        () => RegisterApiClient(
          injector(instanceName: DioModule.dioInstanceName),
        ),
      )
      ..registerFactory<LoginApiClient>(() => LoginApiClient(
            injector(instanceName: DioModule.dioInstanceName),
          ),)
      ..registerFactory<OtpApiClient>(() =>
          OtpApiClient(injector(instanceName: DioModule.dioInstanceName)),)
      ..registerFactory<ForgotPasswordApiClient>(() =>ForgotPasswordApiClient(
        injector(instanceName: DioModule.dioInstanceName,
        ),),)
        ..registerFactory<ProductApiClient>(
        () => ProductApiClient(
          injector(instanceName: DioModule.dioInstanceName),
        ),
      )
      ..registerFactory<StoreApiClient>(
        () => StoreApiClient(
          injector(instanceName: DioModule.dioInstanceName),
        ),
      );
  }
}
