import 'package:duck_architecture_sample/core/actions.dart';
import 'package:duck_architecture_sample/presentation/blocks/decreasebutton/decrease_button_view_contract.dart';
import 'package:duck_architecture_sample/presentation/blocks/incresebutton/increase_button_view_contract.dart';
import 'package:duck_architecture_sample/presentation/blocks/presenter.dart';

class DecreaseButtonPresenter extends Presenter<DecreaseButtonViewContract> {
  final Function(Action) _dispatcher;

  DecreaseButtonPresenter(this._dispatcher);

  @override
  void init(DecreaseButtonViewContract view) {
    super.init(view);
    _listenView();
  }

  void _listenView() {
    view.onDecreaseClick().listen(
      (_) {
        _dispatcher(Decrease());
      },
    );
  }
}
