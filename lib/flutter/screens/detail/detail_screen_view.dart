import 'package:duck_architecture_sample/flutter/containers/counter/counter_container.dart';
import 'package:duck_architecture_sample/flutter/containers/increasebutton/increase_button_container.dart';
import 'package:flutter/material.dart';

class DetailScreenView extends StatelessWidget {
  final CounterContainer _counterContainer;
  final IncreaseContainer _increaseContainer;

  DetailScreenView(this._counterContainer, this._increaseContainer);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DUCK Archicture POC Detail'),
      ),
      body: Center(
        child: _counterContainer,
      ),
      floatingActionButton: _increaseContainer,
    );
  }
}
