import 'package:flutter/material.dart';
import 'package:flutter_movie_app/global/common/global_image_box.dart';
import 'package:flutter_movie_app/modules/movies/pages/movie_detail/controllers/movie_detail_controller.dart';
import 'package:get/instance_manager.dart';

class MoviesMovieDetailViewBackgroundImage extends StatelessWidget {
  final MoviesMovieDetailViewController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
        child: FittedBox(
            fit: BoxFit.cover,
            child: GlobalImageBox(
                path: _controller.movieDetailData.value.backdropPath)));
  }
}
