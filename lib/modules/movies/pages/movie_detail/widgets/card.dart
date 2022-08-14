import 'package:flutter/material.dart';
import 'package:flutter_movie_app/global/common/global_image_box.dart';
import 'package:flutter_movie_app/global/models/movie_model/movie_model.dart';

class MoviesMovieDetailViewCard extends StatelessWidget {
  MovieModel movie;
  MoviesMovieDetailViewCard(this.movie);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Stack(
        children: [
          Container(
            width: 150,
            height: 150,
            child: GlobalImageBox(
              path: movie.posterPath,
              fit: BoxFit.cover,
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
    );
  }
}
