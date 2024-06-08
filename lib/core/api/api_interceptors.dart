import 'package:dio/dio.dart';

import '../../cache/cache_helper.dart';
import '/core/api/end_points.dart';

class ApiInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.connectTimeout = const Duration(seconds: 10);
    options.headers[Apikeys.lang] = 'ar';
    options.headers[Apikeys.accept] = 'application/json';
    String? token = CacheHelper().getData(key: Apikeys.token);
    if (CacheHelper().getData(key: Apikeys.token) != null) {
      options.headers[Apikeys.authorization] = 'Bearer $token';
    }
    super.onRequest(options, handler);
  }
}
