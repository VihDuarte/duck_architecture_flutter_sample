import 'package:duck_architecture_sample/flutter/containers/container.dart';
import 'package:duck_architecture_sample/flutter/screens/home/home_screen_view.dart';
import 'package:duck_architecture_sample/presentation/screen/home/home_screen_presenter.dart';

class HomeScreenContainer extends DuckContainer<HomeScreenPresenter, HomeScreenView> {
  HomeScreenContainer(HomeScreenView view, HomeScreenPresenter presenter)
      : super(view, presenter);
}
