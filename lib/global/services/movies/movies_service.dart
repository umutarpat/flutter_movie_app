import 'package:flutter_movie_app/global/interceptors/dio/dio_config.dart';
import 'package:flutter_movie_app/global/interceptors/dio/get_dio.dart';
import 'package:flutter_movie_app/global/models/movie_model/movie_model.dart';
import 'package:flutter_movie_app/global/models/response_data/search_movie_response_data/search_movie_response_data.dart';
import 'package:flutter_movie_app/global/utils/logger.dart';

Future<SearchMovieResponseData> searchMovieService(
    {required String query, int page = 1}) async {
  try {
    var response = await getDio(dioOptions)
        .get("/search/movie", queryParameters: {'query': query, 'page': page});

    final movies = SearchMovieResponseData.fromJson(response.data);

    return movies;
  } catch (e) {
    logger(e.toString());
    return SearchMovieResponseData();
  }
}

Future<MovieModel> movieDetailService({required String movie_id}) async {
  try {
    var response = await getDio(dioOptions).get(
      "/movie/$movie_id",
    );

    final movie = MovieModel.fromJson(response.data);

    return movie;
  } catch (e) {
    logger(e.toString());
    return MovieModel();
  }
}
