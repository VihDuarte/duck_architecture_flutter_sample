import 'package:duck_architecture_sample/core/actions.dart';
import 'package:duck_architecture_sample/flutter/containers/counter/counter_container.dart';
import 'package:duck_architecture_sample/flutter/containers/counter/counter_view.dart';
import 'package:duck_architecture_sample/flutter/containers/decreasebutton/decrease_button_container.dart';
import 'package:duck_architecture_sample/flutter/containers/decreasebutton/decrease_button_view.dart';
import 'package:duck_architecture_sample/flutter/containers/increasebutton/increase_button_container.dart';
import 'package:duck_architecture_sample/flutter/containers/increasebutton/increase_button_view.dart';
import 'package:duck_architecture_sample/flutter/providers/boundaries_provider.dart';
import 'package:duck_architecture_sample/presentation/blocks/counter/counter_presenter.dart';
import 'package:duck_architecture_sample/presentation/blocks/decreasebutton/decrease_button_presenter.dart';
import 'package:duck_architecture_sample/presentation/blocks/incresebutton/increase_button_presenter.dart';

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
