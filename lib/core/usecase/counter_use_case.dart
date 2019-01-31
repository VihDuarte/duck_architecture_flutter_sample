import 'package:duck_architecture_sample/core/boundaries/counter_input_boundary.dart';
import 'package:duck_architecture_sample/core/boundaries/counter_output_boundary.dart';
import 'package:duck_architecture_sample/data/gateway/counter_gateway.dart';
import 'package:rxdart/rxdart.dart';

class CounterUseCase extends CounterInputBoundary with CounterOutputBoundary {
  final _counterSubject = BehaviorSubject<int>();
  final CounterGateway _counterGateway;

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


