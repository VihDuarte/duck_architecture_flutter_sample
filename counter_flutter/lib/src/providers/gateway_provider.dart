import 'package:counter_base/counter_base.dart';

class GatewayProvider {
  static CounterGateway _counterGateway;

  static CounterGateway getCounterGateway() {
    if (_counterGateway == null) {
      _counterGateway = CounterGateway();
    }
    return _counterGateway;
  }
}
