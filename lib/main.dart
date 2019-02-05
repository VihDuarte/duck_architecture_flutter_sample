import 'package:counter_flutter/couter_flutter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Counter",
      onGenerateRoute: _routes,
      debugShowCheckedModeBanner: false,
    );
  }

  Route _routes(RouteSettings settings) {
    if (settings.name == '/') {
      return _homeScreen();
    } else if (settings.name.contains('/detail')) {
      return _detailScreen();
    }
  }

  Route _homeScreen() {
    return MaterialPageRoute(
      builder: (context) {
        return CounterCoordinator.initHome(context);
      },
    );
  }

  Route _detailScreen() {
    return PageRouteBuilder(
      opaque: false,
      pageBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
      ) {
        return CounterCoordinator.initFirstBottomCard(context);
      },
    );
  }
}
