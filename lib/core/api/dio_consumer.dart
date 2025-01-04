import 'package:dio/dio.dart';
import 'package:tulaby_clean_code/cache/cache_helper.dart';
import 'package:tulaby_clean_code/core/api/api_consumer.dart';
import 'package:tulaby_clean_code/core/api/api_interceptors.dart';
import 'package:tulaby_clean_code/core/api/endpoint.dart';
import 'package:tulaby_clean_code/core/errors/exceptions.dart';

class DioConsumer extends ApiConsumer {
  final Dio dio;

  DioConsumer({required this.dio}) {
    dio.options.headers = {
      'Content-Type': 'application/json',
      'Accept': 'text/plain',
      'Authorization': 'Bearer ${CacheHelper().getData(key: ApiKey.token)}',
      'Cookie':
          '.AspNetCore.Identity.Application=CfDJ8P2cma4ffMFHpSZ_9vZWYjCjn8VyItz7kqTW51Nfd0AumqfnZrX-EJ2rYtRtyFQx6es_XPCVX1srYibhi3kSHL1Fs5h-X6FPim6_eztNmQ02mMLjCJtFQkJpd5JUIdPSFK1CFNPVUQ-YoMbrD7kHKs-V4CuZFpO9d_8YRBf4wev-2lesDfaqn464BZVUoWAb_BiOllMpPjgFN5glxtIKrRVdy7WW18i_YoyNPWbaaH5bFXwjuCi-jcTOAqmOVPb81CHpMje8LPmmBmyBhAJGgM-e-4yiavmAuPdPOYfLrtBEiY0RBXMaBtBdGbW3HQ5zBGdQyLCnUr7T_3KfCklqRlPAyUX5TEYgPMK4Ruh_CpNVTgID9Rpqw422ucWchi8LQK1nitLHKNsZ_J4ctpk4zrhqwPYlSSINpx5bY2JmyMwBLVnqaBDapdAM2WoOEZXQhCpDTrGKF2vsDJRzo-DoaZHhyxe6l3UykoAJ5Ox84Kp5i8NR02osRCkPfVJva8pkbkemWt8Asx1HAH741aZKqD4q4J56ZyBoNV5zjyoY33jqXuujoGzChYppD9Dr3p3TIBYmb1pPTxExXp3aLbI3B2rbcs31boAcZqIs-hKxOvIuzMuM5fS77IWrfvNJxBxtiLNb03BKtpnVZygylrS-GRSaN5kHzB9pWZXwHgFP_QSBqQ2BIkikBwVOQ73JY3JjQ0yh6K4_k9BgXv7yMF1nmMvKeIqOH7a6APhtJRWXn7QYapJIOzXdFgWDRKGBIPnH5yj9GLZ_pO0otwd-MretjmbXXusREMsbGEL8Ssx9oFmv'
    };
    dio.options.baseUrl = Endpoint.baseUrl;
    dio.interceptors.add(ApiInterceptors());
    dio.interceptors.add(LogInterceptor(
      requestBody: true,
      error: true,
      request: true,
      requestHeader: true,
      responseBody: true,
    ));
  }
  @override
  Future delete(String path,
      {dynamic data,
      Map<String, dynamic>? queryParameters,
      bool isformData = false}) async {
    try {
      final response = await dio.delete(path,
          data: isformData ? FormData.fromMap(data) : data,
          queryParameters: queryParameters);
      return response.data;
    } on DioException catch (e) {
      handelDioException(e);
    }
  }

  @override
  Future get(String path,
      {Object? data, Map<String, dynamic>? queryParameters}) async {
    try {
      final response =
          await dio.get(path, data: data, queryParameters: queryParameters);
      return response.data;
    } on DioException catch (e) {
      handelDioException(e);
    }
  }

  @override
  Future patch(String path,
      {dynamic data,
      Map<String, dynamic>? queryParameters,
      bool isformData = false}) async {
    try {
      final response = await dio.patch(path,
          data: isformData ? FormData.fromMap(data) : data,
          queryParameters: queryParameters);
      return response.data;
    } on DioException catch (e) {
      handelDioException(e);
    }
  }

  @override
  Future post(String path,
      {dynamic data,
      Map<String, dynamic>? queryParameters,
      bool isformData = false}) async {
    try {
      final response = await dio.post(path,
          data: isformData ? FormData.fromMap(data) : data,
          queryParameters: queryParameters);
      return response.data;
    } on DioException catch (e) {
      handelDioException(e);
    }
  }
}
