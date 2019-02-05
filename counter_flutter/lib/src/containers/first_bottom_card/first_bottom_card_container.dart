import 'package:counter_flutter/src/containers/container.dart';
import 'package:counter_flutter/src/containers/decreasebutton/decrease_button_view.dart';
import 'package:counter_base/counter_base.dart';

class FirstBottomCardContainer
    extends DuckContainer<DecreaseButtonPresenter, DecreaseButtonView> {
  FirstBottomCardContainer(
      DecreaseButtonView view, DecreaseButtonPresenter presenter)
      : super(view, presenter);
}
