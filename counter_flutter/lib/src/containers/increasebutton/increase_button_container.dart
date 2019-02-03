import 'package:counter_base/counter_base.dart';
import 'package:counter_flutter/src/containers/container.dart';
import 'package:counter_flutter/src/containers/increasebutton/increase_button_view.dart';

class IncreaseButtonContainer
    extends DuckContainer<IncreaseButtonPresenter, IncreaseButtonView> {
  IncreaseButtonContainer(
      IncreaseButtonView view, IncreaseButtonPresenter presenter)
      : super(view, presenter);
}
