import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rest_client/rest_client.dart';

void main() {
  final Dio dio = Dio(
    BaseOptions(
      baseUrl: 'http://172.19.14.120:7000',
    ),
  );

  final RegisterApiClient registerApiClient = RegisterApiClient(dio);

  test('register success with valid data', () async {
    var rng = Random();
    var code = rng.nextInt(900000) + 100000;

    final registerPost = RegisterPost(email: 'test$code@noemail.com',
        password: 'Ak@ng123', name: 'test no email', phone_number: '6289669$code',
        role_id: ['1', '2']);

    final registerClient = await registerApiClient.register(registerPost.toJson());

    expect(registerClient.data.otp, isNotEmpty);
  });

  test('register failed with unverified email exist', () async {
    var rng = Random();
    var code = rng.nextInt(900000) + 100000;

    final registerPost = RegisterPost(email: 'akanggendang97@gmail.com',
        password: 'Ak@ng123', name: 'test no email', phone_number: '6289669$code',
        role_id: ['1', '2']);

    try {
      final registerClient = await registerApiClient.register(registerPost.toJson());

      expect(registerClient.data.otp, isNotEmpty);
    } on DioException catch (e) {
      final errorResponse = ErrorResponse.fromJson(e.response!.data);
      expect(errorResponse.code_detail, 'AUTH_REGISTER_USER_UNVERIFIED');
    }
  });

  test('register failed with phone number exist', () async {
    var rng = Random();
    var code = rng.nextInt(900000) + 100000;

    final registerPost = RegisterPost(email: 'akanggendang$code@gmail.com',
        password: 'Ak@ng123', name: 'test no email', phone_number: '6289669545599',
        role_id: ['1', '2']);

    try {
      final registerClient = await registerApiClient.register(registerPost.toJson());

      expect(registerClient.data.otp, isNotEmpty);
    } on DioException catch (e) {
      final errorResponse = ErrorResponse.fromJson(e.response!.data);
      expect(errorResponse.code_detail, 'UNKNOWN');
    }
  });

  test('register failed with email and phone number exist verified user', () async {
    final registerPost = RegisterPost(email: 'otp3@noemail.com',
        password: 'Ak@ng123', name: 'test no email', phone_number: '628888877748',
        role_id: ['1', '2']);

    try {
      final registerClient = await registerApiClient.register(registerPost.toJson());

      expect(registerClient.data.otp, isNotEmpty);
    } on DioException catch (e) {
      final errorResponse = ErrorResponse.fromJson(e.response!.data);
      expect(errorResponse.code_detail, 'AUTH_REGISTER_USER_VERIFIED');
    }
  });
}
