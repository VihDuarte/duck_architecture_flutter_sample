import 'package:counter_base/counter_base.dart';
import 'package:counter_flutter/src/counter_flutter_navigator.dart';
import 'package:flutter/material.dart';

class NavigatorProvider  {

  static CounterNavigator getNavigator(BuildContext context) => FlutterNavigator(context);

}
