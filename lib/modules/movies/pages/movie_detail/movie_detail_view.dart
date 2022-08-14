import 'package:flutter/material.dart';
import 'package:flutter_movie_app/global/common/global_image_box.dart';
import 'package:flutter_movie_app/global/models/movie_model/movie_model.dart';
import 'package:flutter_movie_app/global/widgets/global_app_bar.dart';
import 'package:flutter_movie_app/modules/movies/pages/movie_detail/controllers/movie_detail_controller.dart';
import 'package:flutter_movie_app/modules/movies/pages/movie_detail/widgets/background_image.dart';
import 'package:flutter_movie_app/modules/movies/pages/movie_detail/widgets/card.dart';
import 'package:flutter_movie_app/modules/movies/pages/movie_detail/widgets/info.dart';
import 'package:get/get.dart';

class MoviesMovieDetailView extends StatelessWidget {
  final movie = Get.arguments as MovieModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: globalAppBar(context, title: movie.title ?? ''),
        body: GetBuilder<MoviesMovieDetailViewController>(
            id: 'main',
            builder: (controller) {
              return Stack(children: [
                MoviesMovieDetailViewBackgroundImage(),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MoviesMovieDetailViewCard(movie),
                      SizedBox(
                        width: context.width * 0.05,
                      ),
                      MoviesMovieDetailViewInfo()
                    ],
                  ),
                ),
              ]);
            }));
  }
}
