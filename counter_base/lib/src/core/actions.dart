abstract class Action {}

class Increase extends Action {
  final int value;

  Increase({this.value = 1});
}

class Decrease extends Action {
  final int value;

  Decrease({this.value = 1});
}

class OpenDetail extends Action {}
class OpenHome extends Action {}
