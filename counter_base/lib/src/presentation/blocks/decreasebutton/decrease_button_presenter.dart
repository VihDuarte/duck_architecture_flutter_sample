import '../../../core/actions.dart';
import '../presenter.dart';
import 'decrease_button_view_contract.dart';

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
