import 'package:dio/dio.dart';
import 'package:flutter_movie_app/global/utils/logger.dart';

InterceptorsWrapper dioMainInterceptor() {
  return InterceptorsWrapper(onRequest: (requestOptions, handler) {
    logger(requestOptions.data);
    // global api auth key
    requestOptions.queryParameters
        .addAll({'api_key': '35ef0461fc4557cf1d256d3335ed7545'});
    return handler.next(requestOptions);
  }, onResponse: (response, handler) {
    logger(response.data ?? '');
    return handler.next(response);
  }, onError: (DioError e, handler) {
    logger(e.response?.data ?? '');
    return handler.next(e);
  });
}
