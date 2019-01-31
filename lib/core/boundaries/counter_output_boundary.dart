import 'package:rxdart/rxdart.dart';

abstract class CounterOutputBoundary {
  Observable<int> counter;
}
