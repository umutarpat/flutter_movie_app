import 'package:flutter/material.dart';
import 'package:flutter_movie_app/global/common/global_image_box.dart';
import 'package:flutter_movie_app/global/models/movie_model/movie_model.dart';
import 'package:get/get.dart';

class MoviesSearchViewMoviesGridCard extends StatelessWidget {
  MovieModel movie;
  MoviesSearchViewMoviesGridCard(this.movie);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              GlobalImageBox(
                path: movie.posterPath,
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
          Spacer(),
          Text(
            movie.title ?? '',
            style: Theme.of(context).textTheme.subtitle2,
          )
        ],
      ),
    );
  }
}
