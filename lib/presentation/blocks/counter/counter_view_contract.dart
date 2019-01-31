import 'package:duck_architecture_sample/presentation/blocks/counter/counter_view_model.dart';
import 'package:duck_architecture_sample/presentation/blocks/view_contract.dart';

mixin CounterViewContract on ViewContract<CounterViewModel>{
  void test();
}
