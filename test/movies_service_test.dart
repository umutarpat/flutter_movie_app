import 'package:flutter_movie_app/global/models/movie_model/movie_model.dart';
import 'package:flutter_movie_app/global/models/response_data/search_movie_response_data/search_movie_response_data.dart';
import 'package:flutter_movie_app/global/services/movies/movies_service.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Results must come', () async {
    SearchMovieResponseData searchMovie;
    searchMovie = await searchMovieService(query: 'a');

    expect(searchMovie.results, isNot(equals(null)));
  });
}
