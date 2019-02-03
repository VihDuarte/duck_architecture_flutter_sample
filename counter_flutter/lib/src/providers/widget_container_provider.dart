import 'package:counter_base/counter_base.dart';
import 'package:counter_flutter/src/containers/counter/counter_container.dart';
import 'package:counter_flutter/src/containers/counter/counter_view.dart';
import 'package:counter_flutter/src/containers/decreasebutton/decrease_button_container.dart';
import 'package:counter_flutter/src/containers/decreasebutton/decrease_button_view.dart';
import 'package:counter_flutter/src/containers/increasebutton/increase_button_container.dart';
import 'package:counter_flutter/src/containers/increasebutton/increase_button_view.dart';
import 'package:counter_flutter/src/providers/boundaries_provider.dart';

class WidgetContainerProvider {
  static CounterContainer getCounterContainer() => CounterContainer(
        CounterView(),
        CounterPresenter(BoundariesProvider.getCounterOutputBoundary()),
      );

  static DecreaseButtonContainer getDecreaseButtonContainer(
          Function(Action) dispatcher) =>
      DecreaseButtonContainer(
        DecreaseButtonView(),
        DecreaseButtonPresenter(dispatcher),
      );

  static IncreaseButtonContainer getIncreaseButtonContainer(
          Function(Action) dispatcher) =>
      IncreaseButtonContainer(
        IncreaseButtonView(),
        IncreaseButtonPresenter(dispatcher),
      );
}
