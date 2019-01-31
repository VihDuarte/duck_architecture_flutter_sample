import 'package:duck_architecture_sample/flutter/containers/container.dart';
import 'package:duck_architecture_sample/flutter/containers/increasebutton/increase_button_view.dart';
import 'package:duck_architecture_sample/presentation/blocks/incresebutton/increase_button_presenter.dart';

class IncreaseContainer extends DuckContainer<IncreaseButtonPresenter, IncreaseButtonView> {
  IncreaseContainer(IncreaseButtonView view, IncreaseButtonPresenter presenter)
      : super(view, presenter);
}
