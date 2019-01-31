import 'package:duck_architecture_sample/flutter/containers/counter/counter_container.dart';
import 'package:duck_architecture_sample/flutter/containers/decreasebutton/decrease_button_container.dart';
import 'package:duck_architecture_sample/flutter/containers/increasebutton/increase_button_container.dart';
import 'package:duck_architecture_sample/presentation/screen/home/home_screen_view_contract.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class HomeScreenView extends StatelessWidget with HomeScreenViewContract {
  final CounterContainer _counterContainer;
  final IncreaseContainer _increaseContainer;
  final DecreaseContainer _decreaseContainer;

  final _onDetailClickSubject = BehaviorSubject<void>();

  @override
  Observable<Object> onDetailClick() => _onDetailClickSubject;

  HomeScreenView(
    this._counterContainer,
    this._increaseContainer,
    this._decreaseContainer,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DUCK Archicture POC'),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          _increaseContainer,
          Container(margin: EdgeInsets.only(top: 12.0)),
          _decreaseContainer,
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            _counterContainer,
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
