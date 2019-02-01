import 'package:duck_architecture_sample/flutter/counter_flutter_navigator.dart';
import 'package:duck_architecture_sample/presentation/counter_navigator.dart';
import 'package:flutter/material.dart';

class NavigatorProvider  {

  static CounterNavigator getNavigator(BuildContext context) => FlutterNavigator(context);

}
