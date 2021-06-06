import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@singleton
class CoreApi {
  final Dio _dio;

  CoreApi(this._dio) {
    // _dio.options.baseUrl = EnvConfig.baseUrl;
    _dio.options.contentType = Headers.jsonContentType;
    _dio.options.connectTimeout = Duration(minutes: 3).inMilliseconds;
    _dio.options.receiveTimeout = Duration(minutes: 3).inMilliseconds;
    // _dio.interceptors.add(AuthenticatedInterceptor(sharePrefInterface));
    // _dio.interceptors.add(UnauthorizedInterceptor());
    // _dio.interceptors.add(BadRequestInterceptor());
    // _dio.interceptors.add(ContentInterceptor(sharePrefInterface));
    if (kDebugMode) {
      _dio.interceptors.add(LogInterceptor(
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        responseBody: true,
      ));
    }
  }

  post(String path, dynamic data, Function badRequestToModelError,
      {bool hasPermission = true}) async {
    try {
      final optional = Options();
      optional.extra = {"hasPermission": hasPermission};
      return await _dio.post(path, data: data, options: optional);
    } on DioError catch (error) {
      throw badRequestToModelError(error);
    }
  }

  put(String path, dynamic data, Function badRequestToModelError,
      {bool hasPermission = true}) async {
    try {
      final optional = Options();
      optional.extra = {"hasPermission": hasPermission};
      return await _dio.put(path, data: data, options: optional);
    } on DioError catch (error) {
      throw badRequestToModelError(error);
    }
  }

  delete(String path, dynamic data, Function badRequestToModelError,
      {bool hasPermission = true}) async {
    try {
      final optional = Options();
      optional.extra = {"hasPermission": hasPermission};
      return await _dio.delete(path, data: data, options: optional);
    } on DioError catch (error) {
      throw badRequestToModelError(error);
    }
  }

  get(String path, dynamic query, Function badRequestToModelError,
      {bool hasPermission = false, dynamic headers = null}) async {
    try {
      final optional = Options();
      optional.extra = {"hasPermission": hasPermission};
      if (headers != null) {
        optional.headers = headers;
      }
      return await _dio.get(path, queryParameters: query, options: optional);
    } on DioError catch (error) {
      throw badRequestToModelError(error);
    }
  }

  putRefreshToken(String path, String token, Function badRequestToModelError) async {
    try {
      final option = Options(headers: {'X-Api-Refresh-Token': token});
      option.extra = {"hasPermission": true};
      return await _dio.put(path, options: option);
    } on DioError catch (error) {
      throw badRequestToModelError(error);
    }
  }

  getWithoutBaseUrl(String endpoint, Function badRequestToModelError) async {
    try {
      Dio dio = Dio();
      dio.options.contentType = Headers.jsonContentType;
      return await dio.get(endpoint);
    } on DioError catch (error) {
      throw badRequestToModelError(error);
    }
  }
}
