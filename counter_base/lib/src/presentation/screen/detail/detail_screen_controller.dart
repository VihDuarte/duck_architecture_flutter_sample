import 'package:counter_base/counter_base.dart';

class DetailScreenController {
  CounterInputBoundary _inputBoundary;

  DetailScreenController(this._inputBoundary);

  void increaseCounter(int value) {
    _inputBoundary.increaseCounter(increase: value);
  }
}
