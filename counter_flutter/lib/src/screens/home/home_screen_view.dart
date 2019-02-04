import 'package:counter_base/counter_base.dart';
import 'package:counter_flutter/src/containers/counter/counter_container.dart';
import 'package:counter_flutter/src/containers/decreasebutton/decrease_button_container.dart';
import 'package:counter_flutter/src/containers/increasebutton/increase_button_container.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class HomeScreenView extends StatelessWidget with HomeScreenViewContract {
  final Widget counterContainer;
  final Widget increaseContainer;
  final Widget decreaseContainer;

  final _onDetailClickSubject = BehaviorSubject<void>();

  @override
  Observable<Object> onDetailClick() => _onDetailClickSubject;

  HomeScreenView({
    this.counterContainer,
    this.increaseContainer,
    this.decreaseContainer,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DUCK Archicture POC - counter'),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          increaseContainer,
          Container(margin: EdgeInsets.only(top: 12.0)),
          decreaseContainer,
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            counterContainer,
            RaisedButton(
              child: Text("DETAIL"),
              onPressed: () => _onDetailClickSubject.add(Object),
            )
          ],
        ),
      ),
    );
  }

  dispose() {
    _onDetailClickSubject.close();
  }
}
