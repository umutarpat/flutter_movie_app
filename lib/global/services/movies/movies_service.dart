import 'package:flutter_movie_app/global/interceptors/dio/dio_config.dart';
import 'package:flutter_movie_app/global/interceptors/dio/get_dio.dart';
import 'package:flutter_movie_app/global/models/response_data/search_movie_response_data/search_movie_response_data.dart';
import 'package:flutter_movie_app/global/utils/logger.dart';

Future<SearchMovieResponseData> searchMovieService() async {
  try {
    var response = await getDio(dioOptions).get(
      "/search/movie",
    );

    final movies = SearchMovieResponseData.fromJson(response.data);

    return movies;
  } catch (e) {
    logger(e.toString());
    return SearchMovieResponseData();
  }
}
