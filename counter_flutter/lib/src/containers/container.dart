import 'package:flutter/material.dart';
import 'package:counter_base/counter_base.dart';

abstract class DuckContainer<P extends Presenter, V extends Widget>
    extends StatelessWidget {
  final V _view;
  final P _presenter;

  DuckContainer(this._view, this._presenter);

  @override
  Widget build(BuildContext context) {
    _presenter.init(_view);
    return _view;
  }
}
