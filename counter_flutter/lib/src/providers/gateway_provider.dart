import 'package:duck_architecture_sample/data/gateway/counter_gateway.dart';

class GatewayProvider {
  static CounterGateway _counterGateway;

  static CounterGateway getCounterGateway() {
    if (_counterGateway == null) {
      _counterGateway = CounterGateway();
    }
    return _counterGateway;
  }
}
