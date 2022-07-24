import 'package:flutter/material.dart';
import 'package:flutter_movie_app/global/models/movie_model/movie_model.dart';
import 'package:flutter_movie_app/modules/movies/pages/search_movies/controllers/search_movies_controller.dart';
import 'package:flutter_movie_app/modules/movies/pages/search_movies/widgets/movies_grid/widgets/card.dart';
import 'package:flutter_movie_app/modules/movies/pages/search_movies/widgets/movies_grid/widgets/fields/textfield/search_textfield.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class MoviesSearchViewMoviesGrid extends StatelessWidget {
  final MoviesSearchViewController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: context.height * 0.02,
        ),
        MoviesSearchViewMoviesGridSearchTextfield(),
        SizedBox(
          height: context.height * 0.02,
        ),
        Expanded(
          child: PagedGridView<int, MovieModel>(
            pagingController: _controller.pagingController,
            physics: ScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 8,
              mainAxisSpacing: 10,
              childAspectRatio: .5,
            ),
            builderDelegate: PagedChildBuilderDelegate<MovieModel>(
              itemBuilder: (context, movie, index) =>
                  MoviesSearchViewMoviesGridCard(
                movie,
              ),
            ),
          ),
        )
      ],
    );
  }
}
