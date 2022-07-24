import 'package:flutter/material.dart';
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
          Text(
            movie.originalTitle ?? '',
            style: Theme.of(context).textTheme.subtitle2,
          )
        ],
      ),
    );
  }
}