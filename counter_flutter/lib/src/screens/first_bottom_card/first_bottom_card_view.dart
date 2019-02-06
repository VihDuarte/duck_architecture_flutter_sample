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

  Animation<double> upAnimation;
  AnimationController upController;

  @override
  void initState() {
    super.initState();

    upController = AnimationController(
      duration: Duration(milliseconds: 200),
      vsync: this,
    );

    upAnimation = Tween(begin: 50.0, end: 200.0).animate(
      CurvedAnimation(
        parent: upController,
        curve: Curves.easeIn,
      ),
    );

    upAnimation.addStatusListener((AnimationStatus status) {
      if (status == AnimationStatus.completed) {
        index = (index + 1);
        upController.reset();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    widgets = [
      _buildFirstCard(),
      _buildSecondCard(),
      _buildThirdCard(),
    ];

    return Container(
        alignment: Alignment.bottomCenter,
        child: Hero(
          tag: "tag",
          child: Container(
            color: Colors.black,
            constraints: BoxConstraints.expand(height: 150),
            child: Stack(
              children: <Widget>[
                Positioned(
                  child: Align(
                    alignment: Alignment.center,
                    child: Stack(
                      children: widgets,
                    ),
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
                          if (index == 2) {
                            widget._onFinishSubject.add(Object);
                          } else {
                            upController.forward();
                          }
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  Widget _buildFirstCard() {
    return AnimatedBuilder(
      animation: upAnimation,
      builder: (BuildContext context, Widget child) {
        return Positioned(
          bottom: upAnimation.value + index * 150,
          child: _buildCard("First Card"),
        );
      },
    );
  }

  Widget _buildSecondCard() {
    return AnimatedBuilder(
      animation: upAnimation,
      builder: (BuildContext context, Widget child) {
        return Positioned(
          bottom: upAnimation.value + index * 150 - 150,
          child: _buildCard("Second Card"),
        );
      },
    );
  }

  Widget _buildThirdCard() {
    return AnimatedBuilder(
      animation: upAnimation,
      builder: (BuildContext context, Widget child) {
        return Positioned(
          bottom: upAnimation.value + index * 150 - 300,
          child: _buildCard("Third Card"),
        );
      },
    );
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
