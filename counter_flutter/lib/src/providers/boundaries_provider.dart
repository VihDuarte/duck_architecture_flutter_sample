import 'package:counter_base/counter_base.dart';

class BoundariesProvider {
  static CounterUseCase _counterUseCase;

  static CounterInputBoundary getCounterInputBoundary(CounterGatewayContract counterGateway) {
    return _getCounterUseCase(counterGateway);
  }

  static CounterOutputBoundary getCounterOutputBoundary(CounterGatewayContract counterGateway) {
    return _getCounterUseCase(counterGateway);
  }

  static CounterUseCase _getCounterUseCase(CounterGatewayContract counterGateway) {
    if (_counterUseCase == null) {
      _counterUseCase = CounterUseCase(counterGateway);
    }
    return _counterUseCase;
  }
}
