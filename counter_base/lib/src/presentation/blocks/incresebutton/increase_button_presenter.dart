import '../../../core/actions.dart';
import '../presenter.dart';
import 'increase_button_view_contract.dart';

class IncreaseButtonPresenter extends Presenter<IncreaseButtonViewContract> {
  final Function(Action) _dispatcher;

  IncreaseButtonPresenter(
    this._dispatcher,
  );

  @override
  void init(IncreaseButtonViewContract view) {
    super.init(view);
    _listenView();
  }

  void _listenView() {
    view.onIncreaseClick().listen(
      (_) {
        _dispatcher(Increase());
      },
    );
  }
}
