import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_movie_app/global/widgets/global_app_bar.dart';
import 'package:flutter_movie_app/modules/movies/pages/search_movies/controllers/search_movies_controller.dart';
import 'package:flutter_movie_app/modules/movies/pages/search_movies/widgets/movies_grid/movies_grid.dart';
import 'package:get/get.dart';

class MoviesSearchView extends StatelessWidget {
  const MoviesSearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: globalAppBar(context, title: "Movies"),
        body: GetBuilder<MoviesSearchViewController>(
            id: 'main',
            builder: (controller) {
              return FormBuilder(
                  key: controller.formkey.value,
                  child: MoviesSearchViewMoviesGrid());
            }));
  }
}
