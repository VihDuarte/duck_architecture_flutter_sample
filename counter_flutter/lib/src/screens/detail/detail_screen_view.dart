import 'package:flutter/material.dart';

class DetailScreenView extends StatelessWidget {
  final Widget counterContainer;
  final Widget increaseButtonContainer;

  DetailScreenView({
    this.counterContainer,
    this.increaseButtonContainer,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DUCK Archicture POC - counter detail'),
      ),
      body: Center(
        child: counterContainer,
      ),
      floatingActionButton: increaseButtonContainer,
    );
  }
}
