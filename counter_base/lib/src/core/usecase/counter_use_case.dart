import 'package:rxdart/rxdart.dart';

import '../../gateway/counter_gateway_contract.dart';
import '../boundaries/counter_input_boundary.dart';
import '../boundaries/counter_output_boundary.dart';

class CounterUseCase extends CounterInputBoundary with CounterOutputBoundary {
  final _counterSubject = BehaviorSubject<int>();
  final CounterGatewayContract _counterGateway;

  CounterUseCase(this._counterGateway);

  @override
  Observable<int> get counter => _counterSubject;

  @override
  void decreaseCounter({int decrease = 1}) {
    _counterGateway.decreaseCounter(decrease).then(_counterSubject.add);
  }

  @override
  void increaseCounter({int increase = 1}) {
    _counterGateway.increaseCounter(increase).then(_counterSubject.add);
  }

  dispose() {
    _counterSubject.close();
  }
}
