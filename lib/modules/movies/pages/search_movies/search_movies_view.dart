import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_movie_app/modules/movies/pages/search_movies/controllers/search_movies_controller.dart';
import 'package:flutter_movie_app/modules/movies/pages/search_movies/widgets/movies_grid/movies_grid.dart';
import 'package:get/get.dart';

class MoviesSearchView extends StatelessWidget {
  const MoviesSearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: GetBuilder<MoviesSearchViewController>(
                id: 'main',
                builder: (controller) {
                  return FormBuilder(
                      key: controller.formkey.value,
                      child: Column(
                        children: [
                          FutureBuilder(
                              future: controller.mainFuture.value,
                              builder: (context, snapshot) {
                                switch (snapshot.connectionState) {
                                  case ConnectionState.active:
                                  case ConnectionState.waiting:
                                    return SizedBox(
                                        height: 600,
                                        child: CircularProgressIndicator());
                                  case ConnectionState.done:
                                    if (snapshot.hasError) {
                                      return Container();
                                    }
                                    controller.assignFutures(
                                        (snapshot.data! as List));

                                    return MoviesSearchViewMoviesGrid();
                                  default:
                                    return SizedBox(
                                        height: 600,
                                        child: CircularProgressIndicator());
                                }
                              })
                        ],
                      ));
                })));
  }
}
