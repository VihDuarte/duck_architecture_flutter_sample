import 'package:duck_architecture_sample/core/usecase/counter_use_case.dart';
import 'package:duck_architecture_sample/data/gateway/counter_gateway.dart';
import 'package:flutter/material.dart';

class CounterUserCaseProvider extends InheritedWidget {
  final CounterUseCase useCase;

  CounterUserCaseProvider({Key key, Widget child})
      : useCase = CounterUseCase(CounterGateway()),
        super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  static CounterUseCase of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(CounterUserCaseProvider)
            as CounterUserCaseProvider)
        .useCase;
  }
}
