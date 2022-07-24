import 'package:dio/dio.dart';
import 'package:flutter_movie_app/global/utils/logger.dart';

InterceptorsWrapper dioMainInterceptor() {
  return InterceptorsWrapper(onRequest: (requestOptions, handler) {
    logger(requestOptions.data);
    return handler.next(requestOptions);
  }, onResponse: (response, handler) {
    logger(response.data ?? '');
    return handler.next(response);
  }, onError: (DioError e, handler) {
    logger(e.response?.data ?? '');
    return handler.next(e);
  });
}
