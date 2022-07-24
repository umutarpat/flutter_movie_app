import 'package:flutter/material.dart';
import 'package:flutter_movie_app/modules/movies/pages/search_movies/controllers/search_movies_controller.dart';
import 'package:flutter_movie_app/modules/movies/pages/search_movies/widgets/movies_grid/widgets/card.dart';
import 'package:flutter_movie_app/modules/movies/pages/search_movies/widgets/movies_grid/widgets/fields/textfield/search_textfield.dart';
import 'package:get/get.dart';

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
        GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 8,
            mainAxisSpacing: 10,
            physics: ScrollPhysics(),
            childAspectRatio: .5,
            shrinkWrap: true,
            children: _controller.searchMoviesData.value.results != null
                ? _controller.searchMoviesData.value.results!
                    .map((e) => MoviesSearchViewMoviesGridCard(e))
                    .toList()
                : []),
      ],
    );
  }
}
