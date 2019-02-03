import 'package:flutter/material.dart';
import 'package:counter_base/counter_base.dart';

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
