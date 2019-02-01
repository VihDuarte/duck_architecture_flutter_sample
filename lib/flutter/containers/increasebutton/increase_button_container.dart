import 'package:duck_architecture_sample/flutter/containers/container.dart';
import 'package:duck_architecture_sample/flutter/containers/increasebutton/increase_button_view.dart';
import 'package:duck_architecture_sample/presentation/blocks/incresebutton/increase_button_presenter.dart';

class IncreaseButtonContainer extends DuckContainer<IncreaseButtonPresenter, IncreaseButtonView> {
  IncreaseButtonContainer(IncreaseButtonView view, IncreaseButtonPresenter presenter)
      : super(view, presenter);
}
