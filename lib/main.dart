import 'package:duck_architecture_sample/flutter/containers/counter/counter_container.dart';
import 'package:duck_architecture_sample/flutter/containers/counter/counter_view.dart';
import 'package:duck_architecture_sample/flutter/containers/decreasebutton/decrease_button_container.dart';
import 'package:duck_architecture_sample/flutter/containers/decreasebutton/decrease_button_view.dart';
import 'package:duck_architecture_sample/flutter/containers/increasebutton/increase_button_container.dart';
import 'package:duck_architecture_sample/flutter/containers/increasebutton/increase_button_view.dart';
import 'package:duck_architecture_sample/flutter/flutter_navigator.dart';
import 'package:duck_architecture_sample/flutter/providers/counter_user_case_provider.dart';
import 'package:duck_architecture_sample/flutter/screens/detail/detail_screen_view.dart';
import 'package:duck_architecture_sample/flutter/screens/home/home_screen_container.dart';
import 'package:duck_architecture_sample/flutter/screens/home/home_screen_view.dart';
import 'package:duck_architecture_sample/presentation/blocks/counter/counter_presenter.dart';
import 'package:duck_architecture_sample/presentation/blocks/decreasebutton/decrease_button_presenter.dart';
import 'package:duck_architecture_sample/presentation/blocks/incresebutton/increase_button_presenter.dart';
import 'package:duck_architecture_sample/presentation/coordinator.dart';
import 'package:duck_architecture_sample/presentation/screen/home/home_screen_presenter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CounterUserCaseProvider(
      child: MaterialApp(
        title: "Counter",
        onGenerateRoute: _routes,
      ),
    );
  }

  Route _routes(RouteSettings settings) {
    if (settings.name == '/') {
      return _homeScreen();
    } else if (settings.name.contains('/detail')) {
      return _detailScreen();
    }
  }

  Route _homeScreen() {
    return MaterialPageRoute(
      builder: (context) {
        var useCase = CounterUserCaseProvider.of(context);
        var navigator = FlutterNavigator(context);
        var coordinator = Coordinator(useCase, navigator);

        var counterContainer = CounterContainer(
          CounterView(),
          CounterPresenter(useCase),
        );

        var increaseButtonContainer = IncreaseContainer(
          IncreaseButtonView(),
          IncreaseButtonPresenter(coordinator.dispatch),
        );

        var decreaseButtonContainer = DecreaseContainer(
          DecreaseButtonView(),
          DecreaseButtonPresenter(coordinator.dispatch),
        );

        return HomeScreenContainer(
          HomeScreenView(
            counterContainer,
            increaseButtonContainer,
            decreaseButtonContainer,
          ),
          HomeScreenPresenter(coordinator.dispatch),
        );
      },
    );
  }

  Route _detailScreen() {
    return MaterialPageRoute(
      builder: (context) {
        var useCase = CounterUserCaseProvider.of(context);
        var navigator = FlutterNavigator(context);
        var coordinator = Coordinator(useCase, navigator);

        var counterContainer = CounterContainer(
          CounterView(),
          CounterPresenter(useCase),
        );

        var increaseButtonContainer = IncreaseContainer(
          IncreaseButtonView(),
          IncreaseButtonPresenter(coordinator.dispatch),
        );

        return DetailScreenView(counterContainer, increaseButtonContainer);
      },
    );
  }
}
