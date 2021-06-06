import 'package:demoapp/model/base_response_entity.dart';
import 'package:dio/dio.dart';

class ContentInterceptor extends Interceptor {
  // final SharePrefInterface share;
  // ContentInterceptor(this.share);

  @override
  Future onResponse(Response response, ResponseInterceptorHandler handler) async {
    if (response.statusCode == 204) {
      final data = BaseResponseData()..message = "success";
      final baseResponse = BaseResponseEntity()..data = data;
      return handler
          .next(Response(data: baseResponse.toJson(), requestOptions: RequestOptions(path: '')));
    }
    return handler.next(response);
  }
}
