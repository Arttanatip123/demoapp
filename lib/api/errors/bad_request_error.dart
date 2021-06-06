import 'package:demoapp/errors/base_error_entity.dart';
import 'package:dio/dio.dart';

class BadRequestError extends DioError {
  BaseError? baseError;

  BadRequestError(this.baseError, RequestOptions requestOptions)
      : super(requestOptions: requestOptions);
}
