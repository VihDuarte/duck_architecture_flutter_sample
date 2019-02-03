import 'package:duck_architecture_sample/presentation/counter_navigator.dart';
import 'package:flutter/material.dart';

class FlutterNavigator extends CounterNavigator {
  final BuildContext _context;

  FlutterNavigator(this._context);

  @override
  void openDetail() {
    Navigator.pushNamed(_context, '/detail');
  }

  @override
  void openHome() {
    Navigator.pushNamed(_context, '/');
  }
}
