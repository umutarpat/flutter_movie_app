import 'package:flutter_movie_app/global/interceptors/dio/dio_config.dart';
import 'package:flutter_movie_app/global/interceptors/dio/get_dio.dart';
import 'package:flutter_movie_app/global/utils/logger.dart';

Future searchMoviesService() async {
  try {
    var response = await getDio(dioOptions).get(
      "/search/movie",
    );

    return response;
  } catch (e) {
    logger(e.toString());
    return e;
  }
}
