import 'package:flutter_movie_app/global/abstracts/future_abstract.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class MoviesSearchViewController extends GetxController implements IFuture {
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
