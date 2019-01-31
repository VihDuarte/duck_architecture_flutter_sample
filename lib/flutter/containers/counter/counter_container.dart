import 'package:duck_architecture_sample/flutter/containers/container.dart';
import 'package:duck_architecture_sample/flutter/containers/counter/counter_view.dart';
import 'package:duck_architecture_sample/presentation/blocks/counter/counter_presenter.dart';

class CounterContainer extends DuckContainer<CounterPresenter, CounterView> {
  CounterContainer(CounterView view, CounterPresenter presenter)
      : super(view, presenter);
}
