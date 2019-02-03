import 'package:counter_base/counter_base.dart';
import 'package:counter_flutter/src/providers/coordinator_provider.dart';
import 'package:counter_flutter/src/providers/widget_container_provider.dart';
import 'package:counter_flutter/src/screens/home/home_screen_container.dart';
import 'package:counter_flutter/src/screens/home/home_screen_view.dart';
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
