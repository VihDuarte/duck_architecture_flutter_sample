import 'package:duck_architecture_sample/presentation/blocks/incresebutton/increase_button_view_contract.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class IncreaseButtonView extends StatelessWidget
    with IncreaseButtonViewContract {
  final _onIncreaseClickSubject = BehaviorSubject<void>();

  @override
  Observable<Object> onIncreaseClick() => _onIncreaseClickSubject;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: "btn1",
      child: Icon(Icons.add),
      onPressed: () {
        _onIncreaseClickSubject.add(Object());
      },
    );
  }

  dispose() {
    _onIncreaseClickSubject.close();
  }
}
