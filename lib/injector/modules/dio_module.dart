import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:mitraku_seller/configs/app_config.dart';
import 'package:mitraku_seller/injector/injector.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioModule {
  DioModule._();

  static const String dioInstanceName = 'dioInstance';
  static final GetIt _injector = Injector.instance;

  static void setup() {
    _setupDio();
  }

  static void _setupDio() {
    /// Dio
    _injector.registerLazySingleton<Dio>(
      () {
        // TODO(mitraku_seller): custom DIO here
        final Dio dio = Dio(
          BaseOptions(
            baseUrl: AppConfig.baseUrl,
          ),
        );
        if (!kReleaseMode) {
          dio.interceptors.add(
            PrettyDioLogger(
              requestHeader: true,
              requestBody: true,
              responseHeader: true,
              request: true,
            ),
          );
        }
        return dio;
      },
      instanceName: dioInstanceName,
    );
  }

  static void updateHeadersToken(String token) {
    if (_injector.isRegistered<Dio>(instanceName: dioInstanceName)) {
      final Dio dioInstance = _injector<Dio>(instanceName: dioInstanceName);
      dioInstance.options.headers['Authorization'] = 'Bearer $token';
      if (kDebugMode) {
        print('Dio headers updated with new token: $token');
      }
    } else {
      if (kDebugMode) {
        print(
          'Dio instance not registered in GetIt with the specified instance name',
        );
      }
    }
  }
}
