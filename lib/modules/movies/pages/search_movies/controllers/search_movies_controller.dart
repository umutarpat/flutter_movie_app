import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_movie_app/global/abstracts/future_abstract.dart';
import 'package:flutter_movie_app/global/models/movie_model/movie_model.dart';
import 'package:flutter_movie_app/global/models/response_data/search_movie_response_data/search_movie_response_data.dart';
import 'package:flutter_movie_app/global/services/movies/movies_service.dart';
import 'package:flutter_movie_app/global/utils/logger.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class MoviesSearchViewController extends GetxController {
  final formkey = GlobalKey<FormBuilderState>().obs;

  final PagingController<int, MovieModel> pagingController =
      PagingController(firstPageKey: 1);

  @override
  void onInit() {
    super.onInit();
    pagingController.addPageRequestListener((pageKey) {
      getSearchedMovie(page: pageKey);
    });
  }

  Future<void> getSearchedMovie({required int page}) async {
    try {
      final movies = await searchMovieService(
        query: formkey.value.currentState?.fields['searchfield']?.value ?? 'a',
        page: page,
      );
      final isLastPage = movies.page == movies.totalPages;
      if (isLastPage) {
        pagingController.appendLastPage(movies.results ?? []);
      } else {
        final nextPage = movies.page! + 1;
        pagingController.appendPage(movies.results ?? [], nextPage);
      }
    } catch (error) {
      pagingController.error = error;
    }
  }
}
