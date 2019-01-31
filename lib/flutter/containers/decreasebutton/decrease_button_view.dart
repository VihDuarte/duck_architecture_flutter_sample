import 'package:duck_architecture_sample/presentation/blocks/decreasebutton/decrease_button_view_contract.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class DecreaseButtonView extends StatelessWidget
    with DecreaseButtonViewContract {
  final _onDecreaseClickSubject = BehaviorSubject<void>();

  @override
  Observable<Object> onDecreaseClick() => _onDecreaseClickSubject;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: "btn2",
      child: Icon(Icons.remove),
      onPressed: () {
        _onDecreaseClickSubject.add(Object());
      },
    );
  }

  dispose() {
    _onDecreaseClickSubject.close();
  }
}
