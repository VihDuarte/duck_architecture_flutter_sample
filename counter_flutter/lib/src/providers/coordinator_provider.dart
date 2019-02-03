import 'package:counter_base/counter_base.dart';
import 'package:counter_flutter/src/providers/boundaries_provider.dart';
import 'package:counter_flutter/src/providers/navigator_provider.dart';
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
