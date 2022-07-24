import 'package:dio/dio.dart';
import 'package:flutter_movie_app/global/interceptors/dio/dio_main_interceptor.dart';

// custom high level dio for handling options and interceptors
Dio getDio(BaseOptions basedioOptions) {
  Dio dio = Dio(basedioOptions);
  dio.interceptors.add(dioMainInterceptor());
  return dio;
}
