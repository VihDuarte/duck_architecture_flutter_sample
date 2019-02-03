import 'package:duck_architecture_sample/flutter/providers/boundaries_provider.dart';
import 'package:duck_architecture_sample/flutter/providers/navigator_provider.dart';
import 'package:duck_architecture_sample/presentation/counter_coordinator.dart';
import 'package:flutter/material.dart';

class CoordinatorProvider {
  static  CounterCoordinator _counterCoordinator;

  static CounterCoordinator counterCoordinator(BuildContext context) {
    if (_counterCoordinator == null) {
      _counterCoordinator = CounterCoordinator(
        BoundariesProvider.getCounterInputBoundary(),
        NavigatorProvider.getNavigator(context),
      );
    }
    return _counterCoordinator;
  }

}