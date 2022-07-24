import 'package:flutter/material.dart';
import 'package:flutter_movie_app/modules/movies/pages/movie_detail/controllers/movie_detail_controller.dart';
import 'package:get/get.dart';

class MoviesMovieDetailViewInfo extends StatelessWidget {
  final MoviesMovieDetailViewController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            _controller.movieDetailData.value.overview ?? '',
            style: Theme.of(context).textTheme.subtitle2!.copyWith(
                  fontSize: 15,
                ),
          ),
          SizedBox(
            height: context.height * 0.03,
          ),
          Text(
            _controller.movieDetailData.value.genres != null
                ? _controller.movieDetailData.value.genres!
                    .map((e) => e.name ?? '')
                    .toList()
                    .reduce((value, element) => value + ',' + element)
                : '',
            style: Theme.of(context).textTheme.subtitle2!.copyWith(
                  fontSize: 15,
                ),
          )
        ],
      ),
    );
  }
}
