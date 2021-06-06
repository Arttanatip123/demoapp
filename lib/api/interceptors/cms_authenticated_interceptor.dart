import 'package:dio/dio.dart';

class CmsAuthenticatedInterceptor extends Interceptor {
  // final SharePrefInterface share;
  // CmsAuthenticatedInterceptor(this.share);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    options.headers['api-token'] =
        'dMYVoz9jiG/Y+Pif/wnbhKLV6yiAsxMIZmXtST2XWVnZNyEDhJfeCn7DM1iHb68bNg2gi7tjOfO3zo8s2/cYWkeBJapTfdWv';
    options.headers['website-id'] = "11";
    return handler.next(options);
  }
}
