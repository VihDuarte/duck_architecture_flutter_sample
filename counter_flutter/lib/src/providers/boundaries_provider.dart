import 'package:duck_architecture_sample/core/boundaries/counter_input_boundary.dart';
import 'package:duck_architecture_sample/core/boundaries/counter_output_boundary.dart';
import 'package:duck_architecture_sample/core/usecase/counter_use_case.dart';
import 'package:duck_architecture_sample/flutter/providers/gateway_provider.dart';

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