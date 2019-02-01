import 'package:duck_architecture_sample/flutter/containers/container.dart';
import 'package:duck_architecture_sample/flutter/containers/counter/counter_view.dart';
import 'package:duck_architecture_sample/flutter/containers/decreasebutton/decrease_button_view.dart';
import 'package:duck_architecture_sample/presentation/blocks/counter/counter_presenter.dart';
import 'package:duck_architecture_sample/presentation/blocks/decreasebutton/decrease_button_presenter.dart';
import 'package:duck_architecture_sample/presentation/blocks/incresebutton/increase_button_presenter.dart';

class DecreaseButtonContainer extends DuckContainer<DecreaseButtonPresenter, DecreaseButtonView> {
  DecreaseButtonContainer(DecreaseButtonView view, DecreaseButtonPresenter presenter)
      : super(view, presenter);
}
