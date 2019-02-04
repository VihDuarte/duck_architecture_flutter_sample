import 'package:counter_base/counter_base.dart';
import 'package:counter_base/src/presentation/screen/detail/detail_screen_controller.dart';

class DetailScreenDispatcher {
  final DetailScreenController _controller;

  DetailScreenDispatcher(this._controller);

  void dispatch(Action action) {
    switch (action.runtimeType) {
      case Increase:
        _controller.increaseCounter((action as Increase).value);
        break;
    }
  }
}
