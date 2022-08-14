import 'package:get/get.dart';

// At first I created this for futurebuilder multiple data fetching.
// no longer needed at this moment but it can be useful in the future.
abstract class IFuture {
  final mainFuture = Future.wait([]).obs;
  void updateMainFuture() {}
  void assignFutures(List data) {}
}
