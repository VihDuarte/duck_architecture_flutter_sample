import 'package:rxdart/rxdart.dart';

abstract class ViewContract<T> {
  final viewModelSubject = PublishSubject<T>();

  void setViewModel(T viewModel) {
    viewModelSubject.add(viewModel);
  }

  void dispose() {
    viewModelSubject.close();
  }
}
