import 'package:mitraku_seller/configs/app_config.dart';
import 'package:mitraku_seller/injector/injector.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
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
        )..options.headers['Authorization'] =
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb2xlcyI6WyJtZXJjaGFudCIsImN1c3RvbWVyIiwiYWRtaW4iXSwic3ViIjoiYjcwYTJhNWUtYmJkMi00MDAwLTk2YzAtYWFhNTMzYjgyMzZmIiwiZXhwIjoxNzA5MDE5NTE0LCJpYXQiOjE3MDkwMTU5MTR9.NT9-U5CBWs_m12ttuB3pBfpGZ7Vk3TbaYZIQn5SkHao';
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
}
