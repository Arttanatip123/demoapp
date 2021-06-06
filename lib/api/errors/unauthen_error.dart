import 'package:dio/dio.dart';

class UnauthorizedError extends DioError {
  UnauthorizedError() : super(requestOptions: RequestOptions(path: ''));
}
