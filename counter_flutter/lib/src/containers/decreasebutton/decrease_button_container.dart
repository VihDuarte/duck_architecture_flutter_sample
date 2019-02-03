import 'package:counter_flutter/src/containers/container.dart';
import 'package:counter_flutter/src/containers/decreasebutton/decrease_button_view.dart';
import 'package:counter_base/counter_base.dart';

class DecreaseButtonContainer
    extends DuckContainer<DecreaseButtonPresenter, DecreaseButtonView> {
  DecreaseButtonContainer(
      DecreaseButtonView view, DecreaseButtonPresenter presenter)
      : super(view, presenter);
}
