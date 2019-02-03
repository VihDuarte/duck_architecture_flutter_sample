import '../core/actions.dart';
import '../core/boundaries/counter_input_boundary.dart';
import 'counter_navigator.dart';

class CounterCoordinator {
  final CounterInputBoundary _inputBoundary;
  final CounterNavigator _navigator;

  CounterCoordinator(this._inputBoundary, this._navigator);

  void dispatch(Action action) {
    switch (action.runtimeType) {
      case Increase:
        _inputBoundary.increaseCounter(increase: (action as Increase).value);
        break;
      case Decrease:
        _inputBoundary.decreaseCounter(decrease: (action as Decrease).value);
        break;
      case OpenDetail:
        _navigator.openDetail();
        break;
    }
  }
}