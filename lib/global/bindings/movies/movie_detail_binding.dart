import 'package:flutter_movie_app/modules/movies/pages/movie_detail/controllers/movie_detail_controller.dart';
import 'package:get/get.dart';

class MoviesMovieDetailViewBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MoviesMovieDetailViewController>(
        () => MoviesMovieDetailViewController(),
        fenix: true);
  }
}
