import 'package:counter_base/counter_base.dart';
import 'package:counter_base/src/presentation/screen/home/home_screen_controller.dart';

class HomeScreenDispatcher {
  final HomeScreenController _controller;
  final CounterNavigator _navigator;

  HomeScreenDispatcher(this._controller, this._navigator);

  void dispatch(Action action) {
    switch (action.runtimeType) {
      case Increase:
        _controller.increaseCounter((action as Increase).value);
        break;
      case Decrease:
        _controller.decreaseCounter((action as Decrease).value);
        break;
      case OpenDetail:
        _navigator.openDetail();
        break;
    }
  }
}
