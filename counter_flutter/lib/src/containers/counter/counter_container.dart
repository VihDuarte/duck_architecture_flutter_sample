import 'package:counter_flutter/src/containers/container.dart';
import 'package:counter_flutter/src/containers/counter/counter_view.dart';
import 'package:counter_base/counter_base.dart';

class CounterContainer extends DuckContainer<CounterPresenter, CounterView> {
  CounterContainer(CounterView view, CounterPresenter presenter)
      : super(view, presenter);
}
