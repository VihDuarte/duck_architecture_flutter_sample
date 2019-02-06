import 'package:counter_base/counter_base.dart';
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
    return PleniScaffold(
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
        body: Stack(
          children: <Widget>[
            Center(
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
          ],
        ));
  }

  dispose() {
    _onDetailClickSubject.close();
  }
}

class PleniScaffold extends Scaffold {
  PleniScaffold({
    Key key,
    AppBar appBar,
    Widget body,
    Widget floatingActionButton,
  }) : super(
            appBar: appBar,
            body: Stack(
              children: <Widget>[
                body,
                DumbCard(),
              ],
            ),
            floatingActionButton: floatingActionButton);
}

class DumbCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: -300,
      left: 0,
      right: 0,
      child: Hero(
        child: Container(
          constraints: BoxConstraints(maxHeight: 300),
          color: Colors.black,
        ),
        tag: "tag",
      ),
    );
  }
}
