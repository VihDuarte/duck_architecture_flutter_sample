import 'package:counter_base/counter_base.dart';

class DispatcherProvider {
  static HomeScreenDispatcher homeScreenDispatcher(
    HomeScreenController controller,
    CounterNavigator navigator,
  ) =>
      HomeScreenDispatcher(
        controller,
        navigator,
      );

  static DetailScreenDispatcher detailScreenDispatcher(
    DetailScreenController controller,
  ) =>
      DetailScreenDispatcher(controller);
}
