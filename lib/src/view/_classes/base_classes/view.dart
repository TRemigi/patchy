import 'redux_controller.dart';
import 'redux_presenter.dart';
import 'view_model.dart';

class View<A extends ReduxController, B extends ReduxPresenter, C extends ViewModel> {
  late final A controller;
  late final B presenter;
}
