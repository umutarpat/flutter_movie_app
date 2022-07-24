import 'package:flutter_movie_app/global/models/response_data/search_movie_response_data/search_movie_response_data.dart';
import 'package:flutter_movie_app/global/services/movies/movies_service.dart';
import 'package:flutter_movie_app/modules/movies/pages/search_movies/controllers/search_movies_controller.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';

void main() {
  test('Paging controller item list must be populated', () async {
    final controller = Get.put(MoviesSearchViewController());
    await controller.getSearchedMovie(page: 1);

    expect(controller.pagingController.itemList, isNotEmpty);
  });
}
