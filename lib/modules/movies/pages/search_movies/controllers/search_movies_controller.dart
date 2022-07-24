import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_movie_app/global/abstracts/future_abstract.dart';
import 'package:flutter_movie_app/global/models/response_data/search_movie_response_data/search_movie_response_data.dart';
import 'package:flutter_movie_app/global/services/movies/movies_service.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class MoviesSearchViewController extends GetxController implements IFuture {
  final formkey = GlobalKey<FormBuilderState>().obs;

  @override
  late Rx<Future<List<Object?>>> mainFuture = Future.wait([]).obs;
  final searchMoviesData = SearchMovieResponseData().obs;
  final searchMoviesFuture = Future.value(SearchMovieResponseData()).obs;

  @override
  void onInit() {
    super.onInit();
    updateMainFuture();
  }

  @override
  void updateMainFuture() {
    getSearchedMovie();
    mainFuture.value = Future.wait([searchMoviesFuture.value]);
    update(['main']);
  }

  @override
  void assignFutures(List data) {
    final datas = [searchMoviesData];
    data.forEach((element) {
      datas[data.indexOf(element)].value = element;
    });
  }

  getSearchedMovie() {
    searchMoviesFuture.value = searchMovieService(
      query: formkey.value.currentState?.fields['searchfield']?.value ?? 'a',
    );
  }
}
