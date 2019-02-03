abstract class Presenter<T> {
  T view;

  void init(T view) {
    this.view = view;
  }
}
