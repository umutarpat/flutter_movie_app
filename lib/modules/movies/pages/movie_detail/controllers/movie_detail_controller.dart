import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_movie_app/global/abstracts/future_abstract.dart';
import 'package:flutter_movie_app/global/models/movie_model/movie_model.dart';
import 'package:flutter_movie_app/global/models/response_data/search_movie_response_data/search_movie_response_data.dart';
import 'package:flutter_movie_app/global/services/movies/movies_service.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class MoviesMovieDetailViewController extends GetxController {
  final formkey = GlobalKey<FormBuilderState>().obs;

  final movieDetailData = MovieModel().obs;
  final movieDetailFuture = Future.value(MovieModel()).obs;

  @override
  void onInit() {
    super.onInit();
    updateMovieDetail();
  }

  getMovieDetail() {
    movieDetailFuture.value = movieDetailService(
      movie_id: Get.parameters['id'].toString(),
    );
  }

  updateMovieDetail() {
    getMovieDetail();
    movieDetailFuture.value.then((value) {
      movieDetailData.value = value;

      update(['main']);
    });
  }
}
