import 'package:counter_base/counter_base.dart';
import 'package:counter_flutter/src/containers/counter/counter_container.dart';
import 'package:counter_flutter/src/containers/decreasebutton/decrease_button_container.dart';
import 'package:counter_flutter/src/containers/increasebutton/increase_button_container.dart';
import 'package:counter_flutter/src/screens/detail/detail_screen_container.dart';
import 'package:counter_flutter/src/screens/detail/detail_screen_view.dart';
import 'package:counter_flutter/src/screens/home/home_screen_container.dart';
import 'package:counter_flutter/src/screens/home/home_screen_view.dart';
import 'package:meta/meta.dart';

class ScreenContainerProvider {
  static HomeScreenContainer getHomeScreenContainer({
    @required CounterContainer counterContainer,
    @required IncreaseButtonContainer increaseButtonContainer,
    @required DecreaseButtonContainer decreaseButtonContainer,
    @required Function(Action action) dispatcher,
  }) {
    return HomeScreenContainer(
      HomeScreenView(
        counterContainer: counterContainer,
        increaseContainer: increaseButtonContainer,
        decreaseContainer: decreaseButtonContainer,
      ),
      HomeScreenPresenter(dispatcher),
    );
  }

  static DetailScreenContainer getDetailScreenContainer({
    @required CounterContainer counterContainer,
    @required IncreaseButtonContainer increaseButtonContainer,
  }) {
    return DetailScreenContainer(
      DetailScreenView(
        counterContainer: counterContainer,
        increaseButtonContainer: increaseButtonContainer,
      ),
    );
  }
}
