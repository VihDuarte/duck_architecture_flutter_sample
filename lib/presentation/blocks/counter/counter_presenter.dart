import 'package:duck_architecture_sample/core/boundaries/counter_output_boundary.dart';
import 'package:duck_architecture_sample/presentation/blocks/counter/counter_view_model.dart';
import 'package:duck_architecture_sample/presentation/blocks/presenter.dart';
import 'package:duck_architecture_sample/presentation/blocks/counter/counter_view_contract.dart';

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
