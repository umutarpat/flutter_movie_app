import 'package:flutter_movie_app/modules/movies/pages/search_movies/controllers/search_movies_controller.dart';
import 'package:get/get.dart';

class MoviesSearchViewBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MoviesSearchViewController>(() => MoviesSearchViewController(),
        fenix: true);
  }
}
