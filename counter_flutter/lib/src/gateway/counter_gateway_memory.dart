import 'package:counter_base/counter_base.dart';

class CounterGatewayMemory extends CounterGatewayContract {
  int count = 0;

  Future<int> increaseCounter(int increase) {
    return Future(() {
      count = count + increase;
      return count;
    });
  }

  Future<int> decreaseCounter(int decrease) {
    return Future(() {
      if (decrease > count) {
        count = 0;
      } else {
        count = count - decrease;
      }

      return count;
    });
  }
}
