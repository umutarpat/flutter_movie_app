import 'package:flutter/material.dart';
import 'package:flutter_movie_app/global/common/global_image_box.dart';
import 'package:flutter_movie_app/global/models/movie_model/movie_model.dart';
import 'package:get/get.dart';

class MoviesSearchViewMoviesGridCard extends StatelessWidget {
  MovieModel movie;
  MoviesSearchViewMoviesGridCard(this.movie);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed("/movie_detail",
          arguments: movie, parameters: {'id': movie.id.toString()}),
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  width: 150,
                  height: 150,
                  child: GlobalImageBox(
                    path: movie.posterPath,
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  child: Card(
                      child: Container(
                    width: 25,
                    height: 25,
                    child: Center(child: Text(movie.voteAverage.toString())),
                  )),
                )
              ],
            ),
            SizedBox(
              height: context.height * 0.05,
            ),
            Flexible(
              child: Text(
                movie.title ?? '',
                overflow: TextOverflow.clip,
                style: Theme.of(context)
                    .textTheme
                    .subtitle2!
                    .copyWith(fontSize: 15),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
