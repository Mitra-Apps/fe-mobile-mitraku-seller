// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _ProductApiClient implements ProductApiClient {
  _ProductApiClient(
    this._dio, {
    this.baseUrl,
  });

  final Dio _dio;

  String? baseUrl;

  @override
  Future<BaseResponse<List<ProductCategoryResponse>>> getProductCategory({
    required String token,
    required bool isDeactivated,
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
        _setStreamType<BaseResponse<List<ProductCategoryResponse>>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
      contentType: content,
    )
            .compose(
              _dio.options,
              '/api/v1/product-category/${isDeactivated}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = BaseResponse<List<ProductCategoryResponse>>.fromJson(
      _result.data!,
      (json) => json is List<dynamic>
          ? json
              .map<ProductCategoryResponse>((i) =>
                  ProductCategoryResponse.fromJson(i as Map<String, dynamic>))
              .toList()
          : List.empty(),
    );
    return value;
  }

  @override
  Future<BaseResponse<List<ProductTypeResponse>>> getProductType({
    required String token,
    required String idProductCategory,
    required bool isDeactivated,
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
        _setStreamType<BaseResponse<List<ProductTypeResponse>>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
      contentType: content,
    )
            .compose(
              _dio.options,
              '/api/v1/product-type/${idProductCategory}/${isDeactivated}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = BaseResponse<List<ProductTypeResponse>>.fromJson(
      _result.data!,
      (json) => json is List<dynamic>
          ? json
              .map<ProductTypeResponse>((i) =>
                  ProductTypeResponse.fromJson(i as Map<String, dynamic>))
              .toList()
          : List.empty(),
    );
    return value;
  }

  @override
  Future<BaseResponse<List<UomResponse>>> getUom({
    required String token,
    required bool isDeactivated,
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
        _setStreamType<BaseResponse<List<UomResponse>>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
      contentType: content,
    )
            .compose(
              _dio.options,
              '/api/v1/uom/${isDeactivated}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = BaseResponse<List<UomResponse>>.fromJson(
      _result.data!,
      (json) => json is List<dynamic>
          ? json
              .map<UomResponse>(
                  (i) => UomResponse.fromJson(i as Map<String, dynamic>))
              .toList()
          : List.empty(),
    );
    return value;
  }

  @override
  Future<BaseResponse<dynamic>> createProduct({
    required String token,
    required Map<String, dynamic> json,
    String content = 'application/json',
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
        _setStreamType<BaseResponse<dynamic>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
      contentType: content,
    )
            .compose(
              _dio.options,
              '/api/v1/products',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = BaseResponse<dynamic>.fromJson(
      _result.data!,
      (json) => json as dynamic,
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
