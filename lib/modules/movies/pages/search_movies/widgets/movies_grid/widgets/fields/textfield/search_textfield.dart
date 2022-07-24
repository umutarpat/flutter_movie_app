import 'package:flutter/material.dart';
import 'package:flutter_movie_app/global/widgets/fields/form_textfield_global.dart';
import 'package:flutter_movie_app/modules/movies/pages/search_movies/controllers/search_movies_controller.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';

class MoviesSearchViewMoviesGridSearchTextfield extends StatelessWidget {
  final MoviesSearchViewController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return GlobalFormTextField(
      decoration: InputDecoration(
        hintText: "Search",
      ),
      name: "password",
      onChanged: (value) {
        if (_controller.formkey.value.currentState!.validate()) {}
      },
      validator:
          FormBuilderValidators.compose([FormBuilderValidators.minLength(2)]),
    );
  }
}
