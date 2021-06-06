import 'package:dio/dio.dart';

class AuthenticatedInterceptor extends Interceptor {
  // final SharePrefInterface share;
  // AuthenticatedInterceptor(this.share);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    if (options.extra.containsKey('hasPermission')) {
      //method get
      if (options.extra['hasPermission']) {
        // if (share.accessToken().isNotEmpty) {
        //   options.headers['Authorization'] = '${share.tokenType()} ${share.accessToken()}';
        //   options.headers['X-Api-Refresh-Token'] = share.refreshToken();
        // }
      } else {
        options.headers['Authorization'] = '';
      }
    } else {
      options.headers['Authorization'] = '';
    }
    // options.headers['Accept-Language'] = share.getLanguage();

    return handler.next(options);
  }
}
