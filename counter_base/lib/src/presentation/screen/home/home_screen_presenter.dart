import '../../../core/actions.dart';
import '../../blocks/presenter.dart';
import 'home_screen_view_contract.dart';

class HomeScreenPresenter extends Presenter<HomeScreenViewContract> {
  final Function(Action) _dispatcher;

  HomeScreenPresenter(this._dispatcher);

  @override
  void init(HomeScreenViewContract view) {
    super.init(view);
    _listenView();
  }

  void _listenView() {
    view.onDetailClick().listen(
      (_) {
        _dispatcher(OpenDetail());
      },
    );
  }
}
