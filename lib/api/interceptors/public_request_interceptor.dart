import 'dart:convert';
import 'package:demoapp/api/errors/base_error_public_api_entity.dart';
import 'package:demoapp/errors/base_error_entity.dart';
import 'package:dio/dio.dart';

class PublicRequestInterceptor extends Interceptor {
  @override
  Future onError(DioError error, ErrorInterceptorHandler handler) async {
    BaseError baseError = BaseError();
    try {
      baseError.type = '';
      baseError.code = error.response!.statusCode!;
      BaseErrorPublicApiEntity? result = BaseErrorPublicApiEntity().fromJson(error.response?.data);
      if (result != null) {
        baseError.message = result.message ?? error.response?.statusMessage ?? '';
      } else {
        baseError.message = error.response?.statusMessage ?? '';
      }
    } catch (e) {
      baseError.type = '';
      baseError.code = error.response?.statusCode ?? 0;
      baseError.message = error.response?.statusMessage ?? '';
    }
    final baseErrorEntity = BaseErrorEntity()..error = baseError;
    return handler.next(error);
  }
}
