import 'package:counter_base/counter_base.dart';
import 'package:counter_flutter/src/containers/container.dart';
import 'package:counter_flutter/src/screens/home/home_screen_view.dart';

class HomeScreenContainer extends DuckContainer<HomeScreenPresenter, HomeScreenView> {
  HomeScreenContainer(HomeScreenView view, HomeScreenPresenter presenter)
      : super(view, presenter);
}
