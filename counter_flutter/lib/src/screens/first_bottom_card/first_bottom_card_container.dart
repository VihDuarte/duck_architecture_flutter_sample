import 'package:counter_base/counter_base.dart';
import 'package:counter_flutter/src/containers/container.dart';
import 'package:counter_flutter/src/screens/first_bottom_card/first_bottom_card_view.dart';

class FirstBottomCardContainer
    extends DuckContainer<FirstBottomCardPresenter, FirstBottomCardView> {
  FirstBottomCardContainer(
      FirstBottomCardView view, FirstBottomCardPresenter presenter)
      : super(view, presenter);
}
