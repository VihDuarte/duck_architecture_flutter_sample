import 'package:counter_base/counter_base.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:rxdart/src/observable.dart';

class FirstBottomCardView extends StatefulWidget
    with FirstBottomCardViewContract {
  final _onFinishSubject = PublishSubject<Object>();

  @override
  Observable<Object> onFinish() => _onFinishSubject;

  @override
  State<StatefulWidget> createState() {
    return FirstButtonCardViewState();
  }

  dispose() {
    _onFinishSubject.close();
  }
}

class FirstButtonCardViewState extends State<FirstBottomCardView>
    with TickerProviderStateMixin {
  int index = 0;
  List<Widget> widgets = [];

  @override
  Widget build(BuildContext context) {
    widgets = [
      _buildFirstCard(),
      _buildSecondCard(),
      _buildThirdCard(),
    ];

    return Container(
      alignment: Alignment.bottomCenter,
      child: Container(
        color: Colors.black,
        constraints: BoxConstraints.expand(height: 150),
        child: Stack(
          children: <Widget>[
            Positioned(
              child: Align(
                alignment: Alignment.center,
                child: widgets[index],
              ),
            ),
            Positioned(
              child: Align(
                alignment: Alignment.centerRight,
                child: RaisedButton(
                  child: Text(
                    ">",
                    style: TextStyle(fontSize: 30),
                  ),
                  onPressed: () {
                    setState(() {
                      index = (index + 1) % 3;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFirstCard() {
    return _buildCard("First Card");
  }

  Widget _buildSecondCard() {
   return  _buildCard("Second Card");
  }

  Widget _buildThirdCard() {
    return _buildCard("Third Card");
  }

  Widget _buildCard(String text) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            text,
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
            ),
          ),
          Text(
            "Oi TCHOLAAAO",
            style: TextStyle(
              fontSize: 22,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
