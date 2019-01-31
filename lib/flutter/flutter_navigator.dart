import 'package:duck_architecture_sample/presentation/duck_navigator.dart';
import 'package:flutter/material.dart';

class FlutterNavigator extends DuckNavigator {
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
