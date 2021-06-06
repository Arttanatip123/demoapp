import 'dart:convert';

import 'package:dio/dio.dart';

class PublicAuthenticatedInterceptor extends Interceptor {
  // final SharePrefInterface share;
  // PublicAuthenticatedInterceptor(this.share);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    if (options.extra.containsKey('hasPermission')) {
      //method get
      if (options.extra['hasPermission']) {
        try {
          // final Map<String, dynamic> result = jsonDecode(share.getProfileModel());
          // UserProfileResponseData profileData = UserProfileResponseData().fromJson(result);
          // if (share.getProfileModel().isNotEmpty) {
          //   options.headers['Authorization'] = 'Bearer ${profileData.memberConnect?.uid}';
          // }
        } catch (e) {}
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
