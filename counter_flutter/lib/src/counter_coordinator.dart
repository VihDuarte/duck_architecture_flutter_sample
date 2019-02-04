import 'package:counter_flutter/src/providers/boundaries_provider.dart';
import 'package:counter_flutter/src/providers/controller_provider.dart';
import 'package:counter_flutter/src/providers/coordinator_provider.dart';
import 'package:counter_flutter/src/providers/gateway_provider.dart';
import 'package:counter_flutter/src/providers/navigator_provider.dart';
import 'package:counter_flutter/src/providers/screen_container_provider.dart';
import 'package:counter_flutter/src/providers/widget_container_provider.dart';
import 'package:flutter/material.dart';

class CounterCoordinator {
  static Widget initDetail() {
    var gateway = GatewayProvider.getCounterGateway();

    var inputBoundary = BoundariesProvider.getCounterInputBoundary(gateway);
    var outputBoundary = BoundariesProvider.getCounterOutputBoundary(gateway);

    var controller = ControllerProvider.getDetailController(inputBoundary);

    var dispatcher =
        DispatcherProvider.detailScreenDispatcher(controller).dispatch;

    var counterContainer =
        WidgetContainerProvider.getCounterContainer(outputBoundary);
    var increaseButtonContainer =
        WidgetContainerProvider.getIncreaseButtonContainer(dispatcher);

    return ScreenContainerProvider.getDetailScreenContainer(
      counterContainer: counterContainer,
      increaseButtonContainer: increaseButtonContainer,
    );
  }

  static Widget initHome(BuildContext context) {
    var gateway = GatewayProvider.getCounterGateway();

    var inputBoundary = BoundariesProvider.getCounterInputBoundary(gateway);
    var outputBoundary = BoundariesProvider.getCounterOutputBoundary(gateway);

    var controller = ControllerProvider.getHomeController(inputBoundary);
    var navigator = NavigatorProvider.getNavigator(context);

    var dispatcher =
        DispatcherProvider.homeScreenDispatcher(controller, navigator).dispatch;

    var counterContainer =
        WidgetContainerProvider.getCounterContainer(outputBoundary);
    var increaseButtonContainer =
        WidgetContainerProvider.getIncreaseButtonContainer(dispatcher);
    var decreaseButtonContainer =
        WidgetContainerProvider.getDecreaseButtonContainer(dispatcher);

    return ScreenContainerProvider.getHomeScreenContainer(
      counterContainer: counterContainer,
      increaseButtonContainer: increaseButtonContainer,
      decreaseButtonContainer: decreaseButtonContainer,
      dispatcher: dispatcher,
    );
  }
}
