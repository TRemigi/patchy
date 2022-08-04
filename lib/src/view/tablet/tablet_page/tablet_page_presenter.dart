import 'package:injectable/injectable.dart';
import 'package:redux/redux.dart';

import '../../../configuration/redux/app_state/app_state.dart';
import '../../_classes/base_classes/redux_presenter.dart';
import 'tablet_page_view_model.dart';

@injectable
class TabletPagePresenter extends ReduxPresenter<TabletPageViewModel> {
  TabletPagePresenter(Store<AppState> store) : super(store);

  @override
  TabletPageViewModel buildViewModel(AppState appState) => TabletPageViewModel();
}
