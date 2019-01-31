import 'package:duck_architecture_sample/presentation/blocks/counter/counter_view_model.dart';
import 'package:duck_architecture_sample/presentation/blocks/view_contract.dart';
import 'package:flutter/material.dart';
import 'package:duck_architecture_sample/presentation/blocks/counter/counter_view_contract.dart';

class CounterView extends StatelessWidget
    with ViewContract<CounterViewModel>, CounterViewContract {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: viewModelSubject,
      builder:
          (BuildContext context, AsyncSnapshot<CounterViewModel> snapshot) {
        return Text(
          snapshot.data.counter.toString(),
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        );
      },
      initialData: CounterViewModel(0),
    );
  }

  @override
  void dispose() {
    viewModelSubject.close();
  }

  @override
  void test() {}
}
