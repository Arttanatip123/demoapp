import 'package:dio/dio.dart';

class BadRequestInterceptor extends Interceptor {
  @override
  Future onError(DioError error, ErrorInterceptorHandler handler) async {
    return handler.next(error);
  }
}
