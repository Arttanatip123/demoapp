import 'dart:convert';

import 'package:demoapp/api/errors/base_error_public_api_entity.dart';
import 'package:demoapp/generated/json/base/json_convert_content.dart';
import 'package:demoapp/generated/json/base/json_field.dart';
import 'package:dio/dio.dart';

class BaseErrorEntity with JsonConvert<BaseErrorEntity> {
  @JSONField(name: "error")
  BaseError? error;

  static badRequestToModelError(DioError err) {
    if (err.requestOptions.baseUrl == '') {
      try {
        if (err.type == DioErrorType.other ||
            err.type == DioErrorType.receiveTimeout ||
            err.type == DioErrorType.connectTimeout) {
          final error = BaseError()
            ..code = 0
            ..message = 'กรุณาเชื่อมต่ออินเตอร์เน็ต\nเพื่อเปลี่ยนแปลงหรือดูข้อมูลล่าสุด'
            ..field = ''
            ..line = ''
            ..type = '';
          return error;
        }
        final error = BaseErrorEntity().fromJson(err.response?.data);
        return error.error;
      } catch (e) {
        print(e);
        final error = BaseError()
          ..code = 0
          ..message = ''
          ..field = ''
          ..line = ''
          ..type = '';
        return error;
      }
    } else {
      BaseError baseError = BaseError();
      try {
        if (err.type == DioErrorType.other ||
            err.type == DioErrorType.receiveTimeout ||
            err.type == DioErrorType.connectTimeout) {
          final error = BaseError()
            ..code = 0
            ..message = 'กรุณาเชื่อมต่ออินเตอร์เน็ต\nเพื่อเปลี่ยนแปลงหรือดูข้อมูลล่าสุด'
            ..field = ''
            ..line = ''
            ..type = '';
          return error;
        }
        baseError.type = '';
        baseError.code = err.response!.statusCode!;
        BaseErrorPublicApiEntity? result = BaseErrorPublicApiEntity().fromJson(err.response?.data);
        if (result != null) {
          baseError.message = result.message ?? err.response?.statusMessage ?? '';
        } else {
          baseError.message = err.response?.statusMessage ?? '';
        }
      } catch (e) {
        print(e);
        baseError.type = '';
        baseError.code = err.response?.statusCode ?? 0;
        baseError.message = err.response?.statusMessage ?? '';
      }
      return baseError;
    }
  }
}

class BaseError with JsonConvert<BaseError> {
  late String type;
  late int code;
  late String message;
  String? field;
  String? line;
}
