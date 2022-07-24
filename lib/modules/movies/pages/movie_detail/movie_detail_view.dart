import 'package:flutter/material.dart';
import 'package:flutter_movie_app/global/widgets/global_app_bar.dart';

class MoviesMovieDetailView extends StatelessWidget {
  const MoviesMovieDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: globalAppBar(context, title: "Movie Detail"),
      body: Container(),
    );
  }
}
