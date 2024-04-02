// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _StoreApiClient implements StoreApiClient {
  _StoreApiClient(
    this._dio, {
    this.baseUrl,
  });

  final Dio _dio;

  String? baseUrl;

  @override
  Future<BaseResponse<MyStoreResponse>> getMyStore({
    required String token,
    String content = 'application/json',
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{
      r'Authorization': token,
      r'Content-Type': content,
    };
    _headers.removeWhere((k, v) => v == null);
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BaseResponse<MyStoreResponse>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
      contentType: content,
    )
            .compose(
              _dio.options,
              '/api/v1/stores/my-store',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = BaseResponse<MyStoreResponse>.fromJson(
      _result.data!,
      (json) => MyStoreResponse.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<BaseResponseNullable<MyStoreResponse>> postCreateStore(
      {required Map<String, dynamic> json}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(json);
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BaseResponseNullable<MyStoreResponse>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/v1/stores',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = BaseResponseNullable<MyStoreResponse>.fromJson(
      _result.data!,
      (json) => MyStoreResponse.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<BaseResponseNullable<MyStoreResponse>> putEditStore({
    required String token,
    String content = 'application/json',
    required String storeId,
    required Map<String, dynamic> json,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{
      r'Authorization': token,
      r'Content-Type': content,
    };
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    _data.addAll(json);
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BaseResponseNullable<MyStoreResponse>>(Options(
      method: 'PUT',
      headers: _headers,
      extra: _extra,
      contentType: content,
    )
            .compose(
              _dio.options,
              '/api/v1/stores/${storeId}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = BaseResponseNullable<MyStoreResponse>.fromJson(
      _result.data!,
      (json) => MyStoreResponse.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
