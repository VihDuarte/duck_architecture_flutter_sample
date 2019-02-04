import 'package:flutter/material.dart';
import 'package:counter_base/counter_base.dart';

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
}
