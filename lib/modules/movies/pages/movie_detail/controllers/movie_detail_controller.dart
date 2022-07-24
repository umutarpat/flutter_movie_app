import 'package:flutter_movie_app/global/abstracts/future_abstract.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class MoviesMovieDetailViewController extends GetxController
    implements IFuture {
  @override
  late Rx<Future<List<Object?>>> mainFuture = Future.wait([]).obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void updateMainFuture() {}

  @override
  void assignFutures(List data) {}
}
