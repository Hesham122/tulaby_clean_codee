import 'package:dio/dio.dart';
import 'package:tulaby_clean_code/cache/cache_helper.dart';
import 'package:tulaby_clean_code/core/api/endpoint.dart';

class ApiInterceptors extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers['token'] = CacheHelper().getData(key: ApiKey.token) != null
        ? {CacheHelper().getData(key: ApiKey.token)}
        : null;
    super.onRequest(options, handler);
  }
}
