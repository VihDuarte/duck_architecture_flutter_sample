import 'package:flutter/material.dart';

class DetailScreenView extends StatelessWidget {
  final Widget _counterContainer;
  final Widget _increaseContainer;

  DetailScreenView(this._counterContainer, this._increaseContainer);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DUCK Archicture POC - counter detail'),
      ),
      body: Center(
        child: _counterContainer,
      ),
      floatingActionButton: _increaseContainer,
    );
  }
}
