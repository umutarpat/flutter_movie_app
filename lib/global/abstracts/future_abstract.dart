import 'package:get/get.dart';

abstract class IFuture {
  final mainFuture = Future.wait([]).obs;
  void updateMainFuture() {}
  void assignFutures(List data) {}
}
