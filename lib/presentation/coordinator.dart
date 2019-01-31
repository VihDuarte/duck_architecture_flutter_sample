import 'package:duck_architecture_sample/core/actions.dart';
import 'package:duck_architecture_sample/core/boundaries/counter_input_boundary.dart';
import 'package:duck_architecture_sample/presentation/duck_navigator.dart';

class Coordinator {
  final CounterInputBoundary _inputBoundary;
  final DuckNavigator _navigator;

  Coordinator(this._inputBoundary, this._navigator);

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
