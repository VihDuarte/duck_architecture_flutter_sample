import 'package:counter_base/counter_base.dart';
import 'package:counter_flutter/couter_flutter.dart';
import 'package:counter_flutter/src/containers/container.dart';
import 'package:counter_flutter/src/screens/detail/detail_screen_view.dart';
import 'package:counter_flutter/src/screens/home/home_screen_view.dart';
import 'package:flutter/material.dart';

class DetailScreenContainer extends StatelessWidget {
  final DetailScreenView _view;

  DetailScreenContainer(this._view);

  @override
  Widget build(BuildContext context) {
    return _view;
  }
}
