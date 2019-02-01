import 'package:duck_architecture_sample/core/actions.dart';
import 'package:duck_architecture_sample/flutter/containers/counter/counter_container.dart';
import 'package:duck_architecture_sample/flutter/containers/counter/counter_view.dart';
import 'package:duck_architecture_sample/flutter/containers/decreasebutton/decrease_button_container.dart';
import 'package:duck_architecture_sample/flutter/containers/decreasebutton/decrease_button_view.dart';
import 'package:duck_architecture_sample/flutter/containers/increasebutton/increase_button_container.dart';
import 'package:duck_architecture_sample/flutter/containers/increasebutton/increase_button_view.dart';
import 'package:duck_architecture_sample/flutter/providers/boundaries_provider.dart';
import 'package:duck_architecture_sample/flutter/providers/coordinator_provider.dart';
import 'package:duck_architecture_sample/flutter/providers/widget_container_provider.dart';
import 'package:duck_architecture_sample/flutter/screens/home/home_screen_container.dart';
import 'package:duck_architecture_sample/flutter/screens/home/home_screen_view.dart';
import 'package:duck_architecture_sample/presentation/blocks/counter/counter_presenter.dart';
import 'package:duck_architecture_sample/presentation/blocks/decreasebutton/decrease_button_presenter.dart';
import 'package:duck_architecture_sample/presentation/blocks/incresebutton/increase_button_presenter.dart';
import 'package:duck_architecture_sample/presentation/screen/home/home_screen_presenter.dart';
import 'package:flutter/material.dart';

class ScreenContainerProvider {
  static HomeScreenContainer getHomeScreenContainer(BuildContext context) {
    final dispatcher = CoordinatorProvider.counterCoordinator(context).dispatch;

    return HomeScreenContainer(
      HomeScreenView(
        WidgetContainerProvider.getCounterContainer(),
        WidgetContainerProvider.getIncreaseButtonContainer(dispatcher),
        WidgetContainerProvider.getDecreaseButtonContainer(dispatcher),
      ),
      HomeScreenPresenter(dispatcher),
    );
  }
}
