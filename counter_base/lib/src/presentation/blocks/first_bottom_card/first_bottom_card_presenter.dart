import 'package:counter_base/src/presentation/blocks/first_bottom_card/first_bottom_card_view_contract.dart';

import '../../../core/actions.dart';
import '../presenter.dart';

class FirstBottomCardPresenter extends Presenter<FirstBottomCardViewContract> {
  final Function(Action) _dispatcher;

  FirstBottomCardPresenter(this._dispatcher);

  @override
  void init(FirstBottomCardViewContract view) {
    super.init(view);
    _listenView();
  }

  void _listenView() {
    view.onFinish().listen(
      (_) {
        _dispatcher(Finish());
      },
    );
  }
}
