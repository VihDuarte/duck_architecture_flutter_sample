import 'package:counter_base/counter_base.dart';

class ControllerProvider {
  static HomeScreenController getHomeController(
    CounterInputBoundary inputBoundary,
  ) =>
      HomeScreenController(inputBoundary);

  static DetailScreenController getDetailController(
    CounterInputBoundary inputBoundary,
  ) =>
      DetailScreenController(inputBoundary);
}
