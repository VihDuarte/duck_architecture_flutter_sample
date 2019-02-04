import 'package:counter_flutter/src/gateway/counter_gateway_memory.dart';

class GatewayProvider {
  static CounterGatewayMemory _counterGatewayMemory;

  static CounterGatewayMemory getCounterGateway() {
    if (_counterGatewayMemory == null) {
      _counterGatewayMemory = CounterGatewayMemory();
    }
    return _counterGatewayMemory;
  }
}
