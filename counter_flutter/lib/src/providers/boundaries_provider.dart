import 'package:counter_base/counter_base.dart';
import 'package:counter_flutter/src/providers/gateway_provider.dart';

class BoundariesProvider {
  static CounterUseCase _counterUseCase;

  static CounterInputBoundary getCounterInputBoundary() {
    return _getCounterUseCase();
  }

  static CounterOutputBoundary getCounterOutputBoundary() {
    return _getCounterUseCase();
  }

  static CounterUseCase _getCounterUseCase() {
    if (_counterUseCase == null) {
      _counterUseCase = CounterUseCase(GatewayProvider.getCounterGateway());
    }
    return _counterUseCase;
  }
}
