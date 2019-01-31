import 'package:duck_architecture_sample/core/actions.dart';
import 'package:duck_architecture_sample/presentation/blocks/incresebutton/increase_button_view_contract.dart';
import 'package:duck_architecture_sample/presentation/blocks/presenter.dart';

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
