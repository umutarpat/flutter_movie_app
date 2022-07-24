import 'package:flutter_movie_app/global/bindings/movies/movie_detail_binding.dart';
import 'package:flutter_movie_app/global/bindings/movies/search_movies_binding.dart';
import 'package:flutter_movie_app/modules/movies/pages/movie_detail/movie_detail_view.dart';
import 'package:flutter_movie_app/modules/movies/pages/search_movies/search_movies_view.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>> routes = [
  GetPage(
    name: '/search_movies',
    page: () => MoviesSearchView(),
    binding: MoviesSearchViewBinding(),
  ),
  GetPage(
    name: '/movie_detail',
    page: () => MoviesMovieDetailView(),
    binding: MoviesMovieDetailViewBinding(),
  ),
];
