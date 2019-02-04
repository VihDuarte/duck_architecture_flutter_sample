import 'package:counter_base/counter_base.dart';

class HomeScreenController {
  CounterInputBoundary _inputBoundary;

  HomeScreenController(this._inputBoundary);

  void increaseCounter(int value){
    _inputBoundary.increaseCounter(increase: value);
  }

  void decreaseCounter(int value){
    _inputBoundary.decreaseCounter(decrease: value);
  }
}
