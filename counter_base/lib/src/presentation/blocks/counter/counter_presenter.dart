import '../../../core/boundaries/counter_output_boundary.dart';
import '../presenter.dart';
import 'counter_view_contract.dart';
import 'counter_view_model.dart';

class CounterPresenter extends Presenter<CounterViewContract> {
  final CounterOutputBoundary _boundary;

  CounterPresenter(this._boundary);

  @override
  void init(CounterViewContract view) {
    super.init(view);
    _listBoundary();
  }

  void _listBoundary() {
    _boundary.counter.listen(
      (int counter) => view.setViewModel(CounterViewModel(counter)),
    );
  }
}
