import 'package:injectable/injectable.dart';
import 'package:redux/redux.dart';

import '../../../configuration/redux/app_state/app_state.dart';
import '../../_classes/base_classes/redux_presenter.dart';
import 'home_page_view_model.dart';

@injectable
class HomePagePresenter extends ReduxPresenter<HomePageViewModel> {
  HomePagePresenter(Store<AppState> store) : super(store);

  @override
  HomePageViewModel buildViewModel(AppState appState) => HomePageViewModel();
}
